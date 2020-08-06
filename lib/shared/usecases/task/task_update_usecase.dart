import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:todoapp/shared/models/task/task_model.dart';
import 'package:todoapp/shared/reposetories/task/task_reposetory.dart';
import 'package:todoapp/shared/usecases/usecase.dart';

@lazySingleton
class TaskUpdateUsecase implements UseCase<void, TaskUpdateUsecaseParams> {
  final FirestoreTaskRepository firestoreTaskRepository;
  TaskUpdateUsecase({@required this.firestoreTaskRepository});

  @override
  Future<void> call(TaskUpdateUsecaseParams params) async {
    return firestoreTaskRepository.update(params.model);
  }
}

class TaskUpdateUsecaseParams {
  final TaskModel model;

  TaskUpdateUsecaseParams(this.model);
}
