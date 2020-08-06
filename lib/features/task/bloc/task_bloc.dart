import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todoapp/shared/models/task/task_model.dart';
import 'package:todoapp/shared/usecases/task/task_add_usecase.dart';
import 'package:todoapp/shared/usecases/task/task_update_usecase.dart';
import 'package:todoapp/shared/usecases/task/task_usecase.dart';

part 'task_state.dart';
part 'task_event.dart';
part 'task_bloc.freezed.dart';

@lazySingleton
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskUsecase taskUsecase;
  final TaskAddUsecase taskAddUsecase;
  final TaskUpdateUsecase taskUpdateUsecase;

  TaskModel task;

  TaskBloc({
    @required this.taskUsecase,
    @required this.taskAddUsecase,
    @required this.taskUpdateUsecase,
  }) : super(TaskState.loading());

  @override
  Stream<TaskState> mapEventToState(TaskEvent event) async* {
    yield* event.map(
      init: (value) async* {
        if (value.id == null) {
          task = TaskModel();
          yield TaskState.data(task);
        } else {
          yield TaskState.loading();
          try {
            task = await taskUsecase(TaskUsecaseParams(value.id));
            yield TaskState.data(task);
          } catch (ex) {
            yield TaskState.failure(value);
          }
        }
      },
      updateModel: (value) async* {
        task = value.model;
        yield TaskState.data(task);
      },
      save: (value) async* {
        yield TaskState.data(task, saving: true);
        try {
          if (task.id == null) {
            task =
                task.copyWith.call(date: DateTime.now().millisecondsSinceEpoch);
            await taskAddUsecase(TaskAddUsecaseParams(task));
          } else {
            await taskUpdateUsecase(TaskUpdateUsecaseParams(task));
          }
          yield TaskState.data(task, saved: true);
        } catch (ex) {
          yield TaskState.data(task, failure: true);
        }
      },
    );
  }
}
