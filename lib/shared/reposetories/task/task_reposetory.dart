import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:todoapp/shared/models/task/task_model.dart';
import 'package:todoapp/shared/reposetories/reposetory.dart';

abstract class FirestoreTaskRepository
    extends FirestoreCollectionReposetory<TaskModel> {
  Future<TaskModel> add(TaskModel task);
  Future<void> update(TaskModel task);
}

@Injectable(as: FirestoreTaskRepository)
@lazySingleton
class FirestoreTaskRepositoryImpl extends FirestoreTaskRepository {
  final Firestore firestore;

  FirestoreTaskRepositoryImpl({@required this.firestore});

  @override
  String get collectionName => 'tasks';

  @override
  Future<List<TaskModel>> all() async {
    final data = await firestore
        .collection(collectionName)
        .orderBy('date', descending: true)
        .getDocuments();
    return data.documents.map((e) => convertModel(e)).toList();
  }

  @override
  Future<TaskModel> add(TaskModel task) async {
    final ref = await firestore
        .collection(collectionName)
        .add(task.toJson()..remove('id'));
    return task.copyWith.call(id: ref.documentID);
  }

  @override
  Future<void> update(TaskModel task) {
    final ref = firestore.collection(collectionName).document(task.id);
    return ref.updateData(task.toJson()..remove('id'));
  }

  @override
  TaskModel convertModel(DocumentSnapshot data) =>
      TaskModel.fromJson({'id': data.documentID, ...data.data});
}
