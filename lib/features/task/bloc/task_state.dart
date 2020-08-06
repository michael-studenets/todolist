part of 'task_bloc.dart';

@freezed
abstract class TaskState with _$TaskState {
  const factory TaskState.loading() = TaskStateLoading;
  const factory TaskState.data(
    TaskModel task, {
    @Default(false) bool saving,
    @Default(false) bool failure,
    @Default(false) bool saved,
  }) = TaskStateData;
  const factory TaskState.failure(TaskEvent event) = TaskStateFailure;
}
