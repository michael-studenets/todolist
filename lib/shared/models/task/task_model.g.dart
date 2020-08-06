// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskModel _$_$_TaskModelFromJson(Map<String, dynamic> json) {
  return _$_TaskModel(
    id: json['id'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    date: json['date'] as int,
  );
}

Map<String, dynamic> _$_$_TaskModelToJson(_$_TaskModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'date': instance.date,
    };
