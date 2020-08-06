import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/features/task/bloc/task_bloc.dart';
import 'package:todoapp/shared/di/injector.dart';
import 'package:todoapp/shared/models/task/task_model.dart';
import 'package:todoapp/shared/widgets/failure_container.dart';

class TaskScreen extends StatelessWidget {
  static const routeName = '/task';

  static Future openCreator(BuildContext context) {
    getIt<TaskBloc>().add(TaskEvent.init());
    return Navigator.pushNamed(context, routeName);
  }

  static Future openEditor(BuildContext context, String id) async {
    getIt<TaskBloc>().add(TaskEvent.init(id: id));
    return Navigator.pushNamed(context, routeName);
  }

  const TaskScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return BlocConsumer<TaskBloc, TaskState>(
        listener: (context, state) {
          if (state is TaskStateData) {
            if (state.saved) Navigator.pop(context, true);
            if (state.failure)
              showDialog(
                  context: context,
                  child: AlertDialog(
                    title: Text('Opss'),
                    content: Text('Error'),
                    actions: [
                      FlatButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('OK'))
                    ],
                  ));
          }
        },
        builder: (context, state) => state.map(
              data: (value) => Scaffold(
                appBar: AppBar(
                  title:
                      Text(value.task.id != null ? 'Edit Task' : 'Create Task'),
                  actions: [
                    IconButton(
                      icon: Icon(Icons.done),
                      onPressed: value.saved
                          ? null
                          : () {
                              if (!formKey.currentState.validate()) return;
                              getIt<TaskBloc>().add(TaskEvent.save());
                            },
                    )
                  ],
                ),
                body: () {
                  if (value.saving)
                    return Stack(
                      children: [
                        Positioned.fill(
                            child: TaskForm(value.task, formKey: formKey)),
                        Positioned.fill(
                            child: Container(
                          color: Colors.black.withOpacity(0.1),
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        )),
                      ],
                    );
                  else
                    return TaskForm(value.task, formKey: formKey);
                }(),
              ),
              loading: (value) => Scaffold(
                appBar: AppBar(),
                body: Center(child: CircularProgressIndicator()),
              ),
              failure: (value) => Scaffold(
                appBar: AppBar(),
                body: FailureContainer(
                  onRepeat: () => getIt<TaskBloc>().add(value.event),
                ),
              ),
            ));
  }
}

class TaskForm extends StatelessWidget {
  final TaskModel task;
  final GlobalKey<FormState> formKey;

  const TaskForm(this.task, {Key key, this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            TaskFormInput(
              label: 'Title',
              value: task.title,
              isRequired: true,
              onChanged: (text) => getIt<TaskBloc>()
                  .add(TaskEvent.updateModel(task.copyWith.call(title: text))),
            ),
            TaskFormInput(
              label: 'Description',
              value: task.description,
              isRequired: false,
              onChanged: (text) => getIt<TaskBloc>().add(
                  TaskEvent.updateModel(task.copyWith.call(description: text))),
            ),
          ],
        ),
      ),
    );
  }
}

class TaskFormInput extends StatelessWidget {
  final bool isRequired;
  final String label;
  final String value;
  final ValueChanged<String> onChanged;

  const TaskFormInput(
      {Key key, this.isRequired, this.value, this.onChanged, this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: value,
      validator: isRequired
          ? (value) =>
              value == null || value.isEmpty ? 'Field is required' : null
          : null,
      decoration: InputDecoration(labelText: label),
      onChanged: onChanged,
    );
  }
}
