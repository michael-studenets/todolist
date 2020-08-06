part of 'tasks_bloc.dart';

@freezed
abstract class TasksEvent with _$TasksEvent {
  const factory TasksEvent.init() = TasksEventInit;
  const factory TasksEvent.delete(TaskModel model) = TasksEventDelete;
}
