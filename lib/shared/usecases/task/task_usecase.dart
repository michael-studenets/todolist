import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:todoapp/shared/models/task/task_model.dart';
import 'package:todoapp/shared/reposetories/task/task_reposetory.dart';
import 'package:todoapp/shared/usecases/usecase.dart';

@lazySingleton
class TaskUsecase implements UseCase<TaskModel, TaskUsecaseParams> {
  final FirestoreTaskRepository firestoreTaskRepository;
  TaskUsecase({@required this.firestoreTaskRepository});

  @override
  Future<TaskModel> call(TaskUsecaseParams params) {
    return firestoreTaskRepository.one(params.id);
  }
}

class TaskUsecaseParams {
  final String id;

  TaskUsecaseParams(this.id);
}
