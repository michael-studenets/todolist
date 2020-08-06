import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

abstract class FirestoreCollectionReposetory<T> {
  final Firestore firestore;

  FirestoreCollectionReposetory({@required this.firestore});

  String get collectionName;

  T convertModel(DocumentSnapshot data);

  Future<List<T>> all() async {
    final data = await firestore.collection(collectionName).getDocuments();
    return data.documents.map((e) => convertModel(e)).toList();
  }

  Future<T> one(String id) async {
    final data = await firestore.collection(collectionName).document(id).get();
    return convertModel(data);
  }

  Future<void> delete(String id) {
    final ref = firestore.collection(collectionName).document(id);
    return ref.delete();
  }
}
