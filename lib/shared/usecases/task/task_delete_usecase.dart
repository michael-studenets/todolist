import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:todoapp/shared/reposetories/task/task_reposetory.dart';
import 'package:todoapp/shared/usecases/usecase.dart';

@lazySingleton
class TaskDeleteUsecase implements UseCase<void, TaskDeleteUsecaseParams> {
  final FirestoreTaskRepository firestoreTaskRepository;
  TaskDeleteUsecase({@required this.firestoreTaskRepository});

  @override
  Future<void> call(TaskDeleteUsecaseParams params) async {
    return firestoreTaskRepository.delete(params.id);
  }
}

class TaskDeleteUsecaseParams {
  final String id;

  TaskDeleteUsecaseParams(this.id);
}
