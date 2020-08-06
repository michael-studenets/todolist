import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todoapp/shared/models/task/task_model.dart';
import 'package:todoapp/shared/usecases/task/task_delete_usecase.dart';
import 'package:todoapp/shared/usecases/task/task_list_usecase.dart';
import 'package:todoapp/shared/usecases/usecase.dart';

part 'tasks_state.dart';
part 'tasks_event.dart';
part 'tasks_bloc.freezed.dart';

@lazySingleton
class TasksBloc extends Bloc<TasksEvent, TasksState> {
  final TaskListUsecase taskListUsecase;
  final TaskDeleteUsecase taskDeleteUsecase;

  List<TaskModel> tasks;

  TasksBloc({
    @required this.taskListUsecase,
    @required this.taskDeleteUsecase,
  }) : super(TasksState.loading()) {
    add(TasksEvent.init());
  }

  @override
  Stream<TasksState> mapEventToState(TasksEvent event) async* {
    yield* event.map(
      init: (value) async* {
        yield TasksState.loading();
        try {
          tasks = await taskListUsecase(NoParams());
          yield TasksState.data(tasks);
        } catch (ex) {
          yield TasksState.failure(event);
        }
      },
      delete: (value) async* {
        try {
          await taskDeleteUsecase(TaskDeleteUsecaseParams(value.model.id));
          tasks.remove(value.model);
          yield TasksState.data(tasks);
        } catch (ex) {
          yield TasksState.failure(event);
        }
      },
    );
  }
}
