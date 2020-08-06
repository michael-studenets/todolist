// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TasksStateTearOff {
  const _$TasksStateTearOff();

// ignore: unused_element
  TasksStateLoading loading() {
    return const TasksStateLoading();
  }

// ignore: unused_element
  TasksStateData data(List<TaskModel> tasks) {
    return TasksStateData(
      tasks,
    );
  }

// ignore: unused_element
  TasksStateFailure failure(TasksEvent event) {
    return TasksStateFailure(
      event,
    );
  }
}

// ignore: unused_element
const $TasksState = _$TasksStateTearOff();

mixin _$TasksState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result data(List<TaskModel> tasks),
    @required Result failure(TasksEvent event),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result data(List<TaskModel> tasks),
    Result failure(TasksEvent event),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(TasksStateLoading value),
    @required Result data(TasksStateData value),
    @required Result failure(TasksStateFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(TasksStateLoading value),
    Result data(TasksStateData value),
    Result failure(TasksStateFailure value),
    @required Result orElse(),
  });
}

abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res>;
}

class _$TasksStateCopyWithImpl<$Res> implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  final TasksState _value;
  // ignore: unused_field
  final $Res Function(TasksState) _then;
}

abstract class $TasksStateLoadingCopyWith<$Res> {
  factory $TasksStateLoadingCopyWith(
          TasksStateLoading value, $Res Function(TasksStateLoading) then) =
      _$TasksStateLoadingCopyWithImpl<$Res>;
}

class _$TasksStateLoadingCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res>
    implements $TasksStateLoadingCopyWith<$Res> {
  _$TasksStateLoadingCopyWithImpl(
      TasksStateLoading _value, $Res Function(TasksStateLoading) _then)
      : super(_value, (v) => _then(v as TasksStateLoading));

  @override
  TasksStateLoading get _value => super._value as TasksStateLoading;
}

class _$TasksStateLoading implements TasksStateLoading {
  const _$TasksStateLoading();

  @override
  String toString() {
    return 'TasksState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TasksStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result data(List<TaskModel> tasks),
    @required Result failure(TasksEvent event),
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
    Result data(List<TaskModel> tasks),
    Result failure(TasksEvent event),
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
    @required Result loading(TasksStateLoading value),
    @required Result data(TasksStateData value),
    @required Result failure(TasksStateFailure value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(TasksStateLoading value),
    Result data(TasksStateData value),
    Result failure(TasksStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TasksStateLoading implements TasksState {
  const factory TasksStateLoading() = _$TasksStateLoading;
}

abstract class $TasksStateDataCopyWith<$Res> {
  factory $TasksStateDataCopyWith(
          TasksStateData value, $Res Function(TasksStateData) then) =
      _$TasksStateDataCopyWithImpl<$Res>;
  $Res call({List<TaskModel> tasks});
}

class _$TasksStateDataCopyWithImpl<$Res> extends _$TasksStateCopyWithImpl<$Res>
    implements $TasksStateDataCopyWith<$Res> {
  _$TasksStateDataCopyWithImpl(
      TasksStateData _value, $Res Function(TasksStateData) _then)
      : super(_value, (v) => _then(v as TasksStateData));

  @override
  TasksStateData get _value => super._value as TasksStateData;

  @override
  $Res call({
    Object tasks = freezed,
  }) {
    return _then(TasksStateData(
      tasks == freezed ? _value.tasks : tasks as List<TaskModel>,
    ));
  }
}

class _$TasksStateData implements TasksStateData {
  const _$TasksStateData(this.tasks) : assert(tasks != null);

  @override
  final List<TaskModel> tasks;

  @override
  String toString() {
    return 'TasksState.data(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TasksStateData &&
            (identical(other.tasks, tasks) ||
                const DeepCollectionEquality().equals(other.tasks, tasks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tasks);

  @override
  $TasksStateDataCopyWith<TasksStateData> get copyWith =>
      _$TasksStateDataCopyWithImpl<TasksStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result data(List<TaskModel> tasks),
    @required Result failure(TasksEvent event),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(failure != null);
    return data(tasks);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result data(List<TaskModel> tasks),
    Result failure(TasksEvent event),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(TasksStateLoading value),
    @required Result data(TasksStateData value),
    @required Result failure(TasksStateFailure value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(failure != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(TasksStateLoading value),
    Result data(TasksStateData value),
    Result failure(TasksStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class TasksStateData implements TasksState {
  const factory TasksStateData(List<TaskModel> tasks) = _$TasksStateData;

  List<TaskModel> get tasks;
  $TasksStateDataCopyWith<TasksStateData> get copyWith;
}

abstract class $TasksStateFailureCopyWith<$Res> {
  factory $TasksStateFailureCopyWith(
          TasksStateFailure value, $Res Function(TasksStateFailure) then) =
      _$TasksStateFailureCopyWithImpl<$Res>;
  $Res call({TasksEvent event});

  $TasksEventCopyWith<$Res> get event;
}

class _$TasksStateFailureCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res>
    implements $TasksStateFailureCopyWith<$Res> {
  _$TasksStateFailureCopyWithImpl(
      TasksStateFailure _value, $Res Function(TasksStateFailure) _then)
      : super(_value, (v) => _then(v as TasksStateFailure));

  @override
  TasksStateFailure get _value => super._value as TasksStateFailure;

  @override
  $Res call({
    Object event = freezed,
  }) {
    return _then(TasksStateFailure(
      event == freezed ? _value.event : event as TasksEvent,
    ));
  }

  @override
  $TasksEventCopyWith<$Res> get event {
    if (_value.event == null) {
      return null;
    }
    return $TasksEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

class _$TasksStateFailure implements TasksStateFailure {
  const _$TasksStateFailure(this.event) : assert(event != null);

  @override
  final TasksEvent event;

  @override
  String toString() {
    return 'TasksState.failure(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TasksStateFailure &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(event);

  @override
  $TasksStateFailureCopyWith<TasksStateFailure> get copyWith =>
      _$TasksStateFailureCopyWithImpl<TasksStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result data(List<TaskModel> tasks),
    @required Result failure(TasksEvent event),
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
    Result data(List<TaskModel> tasks),
    Result failure(TasksEvent event),
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
    @required Result loading(TasksStateLoading value),
    @required Result data(TasksStateData value),
    @required Result failure(TasksStateFailure value),
  }) {
    assert(loading != null);
    assert(data != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(TasksStateLoading value),
    Result data(TasksStateData value),
    Result failure(TasksStateFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class TasksStateFailure implements TasksState {
  const factory TasksStateFailure(TasksEvent event) = _$TasksStateFailure;

  TasksEvent get event;
  $TasksStateFailureCopyWith<TasksStateFailure> get copyWith;
}

class _$TasksEventTearOff {
  const _$TasksEventTearOff();

// ignore: unused_element
  TasksEventInit init() {
    return const TasksEventInit();
  }

// ignore: unused_element
  TasksEventDelete delete(TaskModel model) {
    return TasksEventDelete(
      model,
    );
  }
}

// ignore: unused_element
const $TasksEvent = _$TasksEventTearOff();

mixin _$TasksEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result delete(TaskModel model),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result delete(TaskModel model),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(TasksEventInit value),
    @required Result delete(TasksEventDelete value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(TasksEventInit value),
    Result delete(TasksEventDelete value),
    @required Result orElse(),
  });
}

abstract class $TasksEventCopyWith<$Res> {
  factory $TasksEventCopyWith(
          TasksEvent value, $Res Function(TasksEvent) then) =
      _$TasksEventCopyWithImpl<$Res>;
}

class _$TasksEventCopyWithImpl<$Res> implements $TasksEventCopyWith<$Res> {
  _$TasksEventCopyWithImpl(this._value, this._then);

  final TasksEvent _value;
  // ignore: unused_field
  final $Res Function(TasksEvent) _then;
}

abstract class $TasksEventInitCopyWith<$Res> {
  factory $TasksEventInitCopyWith(
          TasksEventInit value, $Res Function(TasksEventInit) then) =
      _$TasksEventInitCopyWithImpl<$Res>;
}

class _$TasksEventInitCopyWithImpl<$Res> extends _$TasksEventCopyWithImpl<$Res>
    implements $TasksEventInitCopyWith<$Res> {
  _$TasksEventInitCopyWithImpl(
      TasksEventInit _value, $Res Function(TasksEventInit) _then)
      : super(_value, (v) => _then(v as TasksEventInit));

  @override
  TasksEventInit get _value => super._value as TasksEventInit;
}

class _$TasksEventInit implements TasksEventInit {
  const _$TasksEventInit();

  @override
  String toString() {
    return 'TasksEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TasksEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result delete(TaskModel model),
  }) {
    assert(init != null);
    assert(delete != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result delete(TaskModel model),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(TasksEventInit value),
    @required Result delete(TasksEventDelete value),
  }) {
    assert(init != null);
    assert(delete != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(TasksEventInit value),
    Result delete(TasksEventDelete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class TasksEventInit implements TasksEvent {
  const factory TasksEventInit() = _$TasksEventInit;
}

abstract class $TasksEventDeleteCopyWith<$Res> {
  factory $TasksEventDeleteCopyWith(
          TasksEventDelete value, $Res Function(TasksEventDelete) then) =
      _$TasksEventDeleteCopyWithImpl<$Res>;
  $Res call({TaskModel model});

  $TaskModelCopyWith<$Res> get model;
}

class _$TasksEventDeleteCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res>
    implements $TasksEventDeleteCopyWith<$Res> {
  _$TasksEventDeleteCopyWithImpl(
      TasksEventDelete _value, $Res Function(TasksEventDelete) _then)
      : super(_value, (v) => _then(v as TasksEventDelete));

  @override
  TasksEventDelete get _value => super._value as TasksEventDelete;

  @override
  $Res call({
    Object model = freezed,
  }) {
    return _then(TasksEventDelete(
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

class _$TasksEventDelete implements TasksEventDelete {
  const _$TasksEventDelete(this.model) : assert(model != null);

  @override
  final TaskModel model;

  @override
  String toString() {
    return 'TasksEvent.delete(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TasksEventDelete &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(model);

  @override
  $TasksEventDeleteCopyWith<TasksEventDelete> get copyWith =>
      _$TasksEventDeleteCopyWithImpl<TasksEventDelete>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result delete(TaskModel model),
  }) {
    assert(init != null);
    assert(delete != null);
    return delete(model);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result delete(TaskModel model),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(TasksEventInit value),
    @required Result delete(TasksEventDelete value),
  }) {
    assert(init != null);
    assert(delete != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(TasksEventInit value),
    Result delete(TasksEventDelete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class TasksEventDelete implements TasksEvent {
  const factory TasksEventDelete(TaskModel model) = _$TasksEventDelete;

  TaskModel get model;
  $TasksEventDeleteCopyWith<TasksEventDelete> get copyWith;
}
