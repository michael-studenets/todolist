part of 'task_bloc.dart';

@freezed
abstract class TaskEvent with _$TaskEvent {
  const factory TaskEvent.init({String id}) = TaskEventInit;
  const factory TaskEvent.save() = TaskEventSave;
  const factory TaskEvent.updateModel(TaskModel model) = TaskEventUpdateModel;
}
