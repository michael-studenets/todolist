// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TaskStateTearOff {
  const _$TaskStateTearOff();

// ignore: unused_element
  TaskStateLoading loading() {
    return const TaskStateLoading();
  }

// ignore: unused_element
  TaskStateData data(TaskModel task,
      {bool saving = false, bool failure = false, bool saved = false}) {
    return TaskStateData(
      task,
      saving: saving,
      failure: failure,
      saved: saved,
    );
  }

// ignore: unused_element
  TaskStateFailure failure(TaskEvent event) {
    return TaskStateFailure(
      event,
    );
  }
}

// ignore: unused_element
const $TaskState = _$TaskStateTearOff();

mixin _$TaskState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required
        Result data(TaskModel task, bool saving, bool failure, bool saved),
    @required Result failure(TaskEvent event),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result data(TaskModel task, bool saving, bool failure, bool saved),
    Result failure(TaskEvent event),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(TaskStateLoading value),
    @required Result data(TaskStateData value),
    @required Result failure(TaskStateFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(TaskStateLoading value),
    Result data(TaskStateData value),
    Result failure(TaskStateFailure value),
    @required Result orElse(),
  });
}

abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res>;
}

class _$TaskStateCopyWithImpl<$Res> implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  final TaskState _value;
  // ignore: unused_field
  final $Res Function(TaskState) _then;
}

abstract class $TaskStateLoadingCopyWith<$Res> {
  factory $TaskStateLoadingCopyWith(
          TaskStateLoading value, $Res Function(TaskStateLoading) then) =
      _$TaskStateLoadingCopyWithImpl<$Res>;
}

class _$TaskStateLoadingCopyWithImpl<$Res> extends _$TaskStateCopyWithImpl<$Res>
    implements $TaskStateLoadingCopyWith<$Res> {
  _$TaskStateLoadingCopyWithImpl(
      TaskStateLoading _value, $Res Function(TaskStateLoading) _then)
      : super(_value, (v) => _then(v as TaskStateLoading));

  @override
  TaskStateLoading get _value => super._value as TaskStateLoading;
}

class _$TaskStateLoading implements TaskStateLoading {
  const _$TaskStateLoading();

  @override
  String toString() {
    return 'TaskState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TaskStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required
        Result data(TaskModel task, bool saving, bool failure, bool saved),
    @required Result failure(TaskEvent event),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(failure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result data(TaskModel task, bool saving, bool failure, bool saved),
    Result failure(TaskEvent event),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(TaskStateLoading value),
    @required Result data(TaskStateData value),
    @required Result failure(TaskStateFailure value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(TaskStateLoading value),
    Result data(TaskStateData value),
    Result failure(TaskStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TaskStateLoading implements TaskState {
  const factory TaskStateLoading() = _$TaskStateLoading;
}

abstract class $TaskStateDataCopyWith<$Res> {
  factory $TaskStateDataCopyWith(
          TaskStateData value, $Res Function(TaskStateData) then) =
      _$TaskStateDataCopyWithImpl<$Res>;
  $Res call({TaskModel task, bool saving, bool failure, bool saved});

  $TaskModelCopyWith<$Res> get task;
}

class _$TaskStateDataCopyWithImpl<$Res> extends _$TaskStateCopyWithImpl<$Res>
    implements $TaskStateDataCopyWith<$Res> {
  _$TaskStateDataCopyWithImpl(
      TaskStateData _value, $Res Function(TaskStateData) _then)
      : super(_value, (v) => _then(v as TaskStateData));

  @override
  TaskStateData get _value => super._value as TaskStateData;

  @override
  $Res call({
    Object task = freezed,
    Object saving = freezed,
    Object failure = freezed,
    Object saved = freezed,
  }) {
    return _then(TaskStateData(
      task == freezed ? _value.task : task as TaskModel,
      saving: saving == freezed ? _value.saving : saving as bool,
      failure: failure == freezed ? _value.failure : failure as bool,
      saved: saved == freezed ? _value.saved : saved as bool,
    ));
  }

  @override
  $TaskModelCopyWith<$Res> get task {
    if (_value.task == null) {
      return null;
    }
    return $TaskModelCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

class _$TaskStateData implements TaskStateData {
  const _$TaskStateData(this.task,
      {this.saving = false, this.failure = false, this.saved = false})
      : assert(task != null),
        assert(saving != null),
        assert(failure != null),
        assert(saved != null);

  @override
  final TaskModel task;
  @JsonKey(defaultValue: false)
  @override
  final bool saving;
  @JsonKey(defaultValue: false)
  @override
  final bool failure;
  @JsonKey(defaultValue: false)
  @override
  final bool saved;

  @override
  String toString() {
    return 'TaskState.data(task: $task, saving: $saving, failure: $failure, saved: $saved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TaskStateData &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)) &&
            (identical(other.saving, saving) ||
                const DeepCollectionEquality().equals(other.saving, saving)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.saved, saved) ||
                const DeepCollectionEquality().equals(other.saved, saved)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(task) ^
      const DeepCollectionEquality().hash(saving) ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(saved);

  @override
  $TaskStateDataCopyWith<TaskStateData> get copyWith =>
      _$TaskStateDataCopyWithImpl<TaskStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required
        Result data(TaskModel task, bool saving, bool failure, bool saved),
    @required Result failure(TaskEvent event),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(failure != null);
    return data(task, saving, this.failure, saved);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result data(TaskModel task, bool saving, bool failure, bool saved),
    Result failure(TaskEvent event),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(task, saving, this.failure, saved);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(TaskStateLoading value),
    @required Result data(TaskStateData value),
    @required Result failure(TaskStateFailure value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(failure != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(TaskStateLoading value),
    Result data(TaskStateData value),
    Result failure(TaskStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class TaskStateData implements TaskState {
  const factory TaskStateData(TaskModel task,
      {bool saving, bool failure, bool saved}) = _$TaskStateData;

  TaskModel get task;
  bool get saving;
  bool get failure;
  bool get saved;
  $TaskStateDataCopyWith<TaskStateData> get copyWith;
}

abstract class $TaskStateFailureCopyWith<$Res> {
  factory $TaskStateFailureCopyWith(
          TaskStateFailure value, $Res Function(TaskStateFailure) then) =
      _$TaskStateFailureCopyWithImpl<$Res>;
  $Res call({TaskEvent event});

  $TaskEventCopyWith<$Res> get event;
}

class _$TaskStateFailureCopyWithImpl<$Res> extends _$TaskStateCopyWithImpl<$Res>
    implements $TaskStateFailureCopyWith<$Res> {
  _$TaskStateFailureCopyWithImpl(
      TaskStateFailure _value, $Res Function(TaskStateFailure) _then)
      : super(_value, (v) => _then(v as TaskStateFailure));

  @override
  TaskStateFailure get _value => super._value as TaskStateFailure;

  @override
  $Res call({
    Object event = freezed,
  }) {
    return _then(TaskStateFailure(
      event == freezed ? _value.event : event as TaskEvent,
    ));
  }

  @override
  $TaskEventCopyWith<$Res> get event {
    if (_value.event == null) {
      return null;
    }
    return $TaskEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

class _$TaskStateFailure implements TaskStateFailure {
  const _$TaskStateFailure(this.event) : assert(event != null);

  @override
  final TaskEvent event;

  @override
  String toString() {
    return 'TaskState.failure(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TaskStateFailure &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(event);

  @override
  $TaskStateFailureCopyWith<TaskStateFailure> get copyWith =>
      _$TaskStateFailureCopyWithImpl<TaskStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required
        Result data(TaskModel task, bool saving, bool failure, bool saved),
    @required Result failure(TaskEvent event),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(failure != null);
    return failure(event);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result data(TaskModel task, bool saving, bool failure, bool saved),
    Result failure(TaskEvent event),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(TaskStateLoading value),
    @required Result data(TaskStateData value),
    @required Result failure(TaskStateFailure value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(TaskStateLoading value),
    Result data(TaskStateData value),
    Result failure(TaskStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class TaskStateFailure implements TaskState {
  const factory TaskStateFailure(TaskEvent event) = _$TaskStateFailure;

  TaskEvent get event;
  $TaskStateFailureCopyWith<TaskStateFailure> get copyWith;
}

class _$TaskEventTearOff {
  const _$TaskEventTearOff();

// ignore: unused_element
  TaskEventInit init({String id}) {
    return TaskEventInit(
      id: id,
    );
  }

// ignore: unused_element
  TaskEventSave save() {
    return const TaskEventSave();
  }

// ignore: unused_element
  TaskEventUpdateModel updateModel(TaskModel model) {
    return TaskEventUpdateModel(
      model,
    );
  }
}

// ignore: unused_element
const $TaskEvent = _$TaskEventTearOff();

mixin _$TaskEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(String id),
    @required Result save(),
    @required Result updateModel(TaskModel model),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(String id),
    Result save(),
    Result updateModel(TaskModel model),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(TaskEventInit value),
    @required Result save(TaskEventSave value),
    @required Result updateModel(TaskEventUpdateModel value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(TaskEventInit value),
    Result save(TaskEventSave value),
    Result updateModel(TaskEventUpdateModel value),
    @required Result orElse(),
  });
}

abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res>;
}

class _$TaskEventCopyWithImpl<$Res> implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  final TaskEvent _value;
  // ignore: unused_field
  final $Res Function(TaskEvent) _then;
}

abstract class $TaskEventInitCopyWith<$Res> {
  factory $TaskEventInitCopyWith(
          TaskEventInit value, $Res Function(TaskEventInit) then) =
      _$TaskEventInitCopyWithImpl<$Res>;
  $Res call({String id});
}

class _$TaskEventInitCopyWithImpl<$Res> extends _$TaskEventCopyWithImpl<$Res>
    implements $TaskEventInitCopyWith<$Res> {
  _$TaskEventInitCopyWithImpl(
      TaskEventInit _value, $Res Function(TaskEventInit) _then)
      : super(_value, (v) => _then(v as TaskEventInit));

  @override
  TaskEventInit get _value => super._value as TaskEventInit;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(TaskEventInit(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

class _$TaskEventInit implements TaskEventInit {
  const _$TaskEventInit({this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'TaskEvent.init(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TaskEventInit &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $TaskEventInitCopyWith<TaskEventInit> get copyWith =>
      _$TaskEventInitCopyWithImpl<TaskEventInit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(String id),
    @required Result save(),
    @required Result updateModel(TaskModel model),
  }) {
    assert(init != null);
    assert(save != null);
    assert(updateModel != null);
    return init(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(String id),
    Result save(),
    Result updateModel(TaskModel model),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(TaskEventInit value),
    @required Result save(TaskEventSave value),
    @required Result updateModel(TaskEventUpdateModel value),
  }) {
    assert(init != null);
    assert(save != null);
    assert(updateModel != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(TaskEventInit value),
    Result save(TaskEventSave value),
    Result updateModel(TaskEventUpdateModel value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class TaskEventInit implements TaskEvent {
  const factory TaskEventInit({String id}) = _$TaskEventInit;

  String get id;
  $TaskEventInitCopyWith<TaskEventInit> get copyWith;
}

abstract class $TaskEventSaveCopyWith<$Res> {
  factory $TaskEventSaveCopyWith(
          TaskEventSave value, $Res Function(TaskEventSave) then) =
      _$TaskEventSaveCopyWithImpl<$Res>;
}

class _$TaskEventSaveCopyWithImpl<$Res> extends _$TaskEventCopyWithImpl<$Res>
    implements $TaskEventSaveCopyWith<$Res> {
  _$TaskEventSaveCopyWithImpl(
      TaskEventSave _value, $Res Function(TaskEventSave) _then)
      : super(_value, (v) => _then(v as TaskEventSave));

  @override
  TaskEventSave get _value => super._value as TaskEventSave;
}

class _$TaskEventSave implements TaskEventSave {
  const _$TaskEventSave();

  @override
  String toString() {
    return 'TaskEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TaskEventSave);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(String id),
    @required Result save(),
    @required Result updateModel(TaskModel model),
  }) {
    assert(init != null);
    assert(save != null);
    assert(updateModel != null);
    return save();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(String id),
    Result save(),
    Result updateModel(TaskModel model),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(TaskEventInit value),
    @required Result save(TaskEventSave value),
    @required Result updateModel(TaskEventUpdateModel value),
  }) {
    assert(init != null);
    assert(save != null);
    assert(updateModel != null);
    return save(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(TaskEventInit value),
    Result save(TaskEventSave value),
    Result updateModel(TaskEventUpdateModel value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class TaskEventSave implements TaskEvent {
  const factory TaskEventSave() = _$TaskEventSave;
}

abstract class $TaskEventUpdateModelCopyWith<$Res> {
  factory $TaskEventUpdateModelCopyWith(TaskEventUpdateModel value,
          $Res Function(TaskEventUpdateModel) then) =
      _$TaskEventUpdateModelCopyWithImpl<$Res>;
  $Res call({TaskModel model});

  $TaskModelCopyWith<$Res> get model;
}

class _$TaskEventUpdateModelCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res>
    implements $TaskEventUpdateModelCopyWith<$Res> {
  _$TaskEventUpdateModelCopyWithImpl(
      TaskEventUpdateModel _value, $Res Function(TaskEventUpdateModel) _then)
      : super(_value, (v) => _then(v as TaskEventUpdateModel));

  @override
  TaskEventUpdateModel get _value => super._value as TaskEventUpdateModel;

  @override
  $Res call({
    Object model = freezed,
  }) {
    return _then(TaskEventUpdateModel(
      model == freezed ? _value.model : model as TaskModel,
    ));
  }

  @override
  $TaskModelCopyWith<$Res> get model {
    if (_value.model == null) {
      return null;
    }
    return $TaskModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

class _$TaskEventUpdateModel implements TaskEventUpdateModel {
  const _$TaskEventUpdateModel(this.model) : assert(model != null);

  @override
  final TaskModel model;

  @override
  String toString() {
    return 'TaskEvent.updateModel(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TaskEventUpdateModel &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(model);

  @override
  $TaskEventUpdateModelCopyWith<TaskEventUpdateModel> get copyWith =>
      _$TaskEventUpdateModelCopyWithImpl<TaskEventUpdateModel>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(String id),
    @required Result save(),
    @required Result updateModel(TaskModel model),
  }) {
    assert(init != null);
    assert(save != null);
    assert(updateModel != null);
    return updateModel(model);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(String id),
    Result save(),
    Result updateModel(TaskModel model),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateModel != null) {
      return updateModel(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(TaskEventInit value),
    @required Result save(TaskEventSave value),
    @required Result updateModel(TaskEventUpdateModel value),
  }) {
    assert(init != null);
    assert(save != null);
    assert(updateModel != null);
    return updateModel(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(TaskEventInit value),
    Result save(TaskEventSave value),
    Result updateModel(TaskEventUpdateModel value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateModel != null) {
      return updateModel(this);
    }
    return orElse();
  }
}

abstract class TaskEventUpdateModel implements TaskEvent {
  const factory TaskEventUpdateModel(TaskModel model) = _$TaskEventUpdateModel;

  TaskModel get model;
  $TaskEventUpdateModelCopyWith<TaskEventUpdateModel> get copyWith;
}
