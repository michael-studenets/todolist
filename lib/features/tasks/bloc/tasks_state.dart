part of 'tasks_bloc.dart';

@freezed
abstract class TasksState with _$TasksState {
  const factory TasksState.loading() = TasksStateLoading;
  const factory TasksState.data(List<TaskModel> tasks) = TasksStateData;
  const factory TasksState.failure(TasksEvent event) = TasksStateFailure;
}
