import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:todoapp/shared/models/task/task_model.dart';
import 'package:todoapp/shared/reposetories/task/task_reposetory.dart';
import 'package:todoapp/shared/usecases/usecase.dart';

@lazySingleton
class TaskListUsecase implements UseCase<List<TaskModel>, NoParams> {
  final FirestoreTaskRepository firestoreTaskRepository;
  TaskListUsecase({@required this.firestoreTaskRepository});

  @override
  Future<List<TaskModel>> call(NoParams params) {
    return firestoreTaskRepository.all();
  }
}
