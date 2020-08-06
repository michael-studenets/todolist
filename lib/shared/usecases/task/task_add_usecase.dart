import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:todoapp/shared/models/task/task_model.dart';
import 'package:todoapp/shared/reposetories/task/task_reposetory.dart';
import 'package:todoapp/shared/usecases/usecase.dart';

@lazySingleton
class TaskAddUsecase implements UseCase<TaskModel, TaskAddUsecaseParams> {
  final FirestoreTaskRepository firestoreTaskRepository;
  TaskAddUsecase({@required this.firestoreTaskRepository});

  @override
  Future<TaskModel> call(TaskAddUsecaseParams params) async {
    return firestoreTaskRepository.add(params.model);
  }
}

class TaskAddUsecaseParams {
  final TaskModel model;

  TaskAddUsecaseParams(this.model);
}
