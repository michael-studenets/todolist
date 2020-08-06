// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../reposetories/task/task_reposetory.dart';
import 'module_injector.dart';
import '../usecases/task/task_add_usecase.dart';
import '../../features/task/bloc/task_bloc.dart';
import '../usecases/task/task_delete_usecase.dart';
import '../usecases/task/task_list_usecase.dart';
import '../usecases/task/task_update_usecase.dart';
import '../usecases/task/task_usecase.dart';
import '../../features/tasks/bloc/tasks_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<Firestore>(() => injectableModule.firestore);
  gh.factory<FirestoreTaskRepository>(
      () => FirestoreTaskRepositoryImpl(firestore: get<Firestore>()));
  gh.lazySingleton<TaskAddUsecase>(() =>
      TaskAddUsecase(firestoreTaskRepository: get<FirestoreTaskRepository>()));
  gh.lazySingleton<TaskDeleteUsecase>(() => TaskDeleteUsecase(
      firestoreTaskRepository: get<FirestoreTaskRepository>()));
  gh.lazySingleton<TaskListUsecase>(() =>
      TaskListUsecase(firestoreTaskRepository: get<FirestoreTaskRepository>()));
  gh.lazySingleton<TaskUpdateUsecase>(() => TaskUpdateUsecase(
      firestoreTaskRepository: get<FirestoreTaskRepository>()));
  gh.lazySingleton<TaskUsecase>(() =>
      TaskUsecase(firestoreTaskRepository: get<FirestoreTaskRepository>()));
  gh.lazySingleton<TasksBloc>(() => TasksBloc(
      taskListUsecase: get<TaskListUsecase>(),
      taskDeleteUsecase: get<TaskDeleteUsecase>()));
  gh.lazySingleton<TaskBloc>(() => TaskBloc(
        taskUsecase: get<TaskUsecase>(),
        taskAddUsecase: get<TaskAddUsecase>(),
        taskUpdateUsecase: get<TaskUpdateUsecase>(),
      ));
  return get;
}

class _$InjectableModule extends InjectableModule {}
