import 'package:flutter/material.dart';
import 'package:todoapp/shared/models/task/task_model.dart';
import 'package:todoapp/shared/utils/date_formater.dart';

class TaskWidget extends StatelessWidget {
  final GestureTapCallback onTap;
  final TaskModel model;
  const TaskWidget(this.model, {Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(model.title ?? ''),
      subtitle: model.description != null ? Text(model.description) : null,
      trailing: model.date != null ? Text(timestampToString(model.date)) : null,
    );
  }
}
