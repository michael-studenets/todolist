import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/features/task/screen/task_screen.dart';
import 'package:todoapp/features/tasks/bloc/tasks_bloc.dart';
import 'package:todoapp/shared/di/injector.dart';
import 'package:todoapp/shared/widgets/failure_container.dart';

import 'task_widget.dart';

class TasksScreen extends StatelessWidget {
  static const routeName = '/tasks';

  const TasksScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task List'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _onAddClick(context),
          )
        ],
      ),
      body: BlocBuilder<TasksBloc, TasksState>(
        builder: (context, state) => state.map(
            data: (value) => RefreshIndicator(
                  onRefresh: () {
                    getIt<TasksBloc>().add(TasksEvent.init());
                    return Future.delayed(Duration(seconds: 1));
                  },
                  child: () {
                    if (value.tasks.length == 0)
                      return Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'No Tasks',
                              style: TextStyle(color: Colors.grey),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 16),
                            RaisedButton(
                              onPressed: () => _onAddClick(context),
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text('Add Task'),
                            )
                          ],
                        ),
                      );
                    else
                      return ListView.builder(
                        itemBuilder: (context, index) {
                          final model = value.tasks[index];
                          return Dismissible(
                            key: Key(value.tasks[index].id),
                            background: Container(color: Colors.red),
                            onDismissed: (direction) => getIt<TasksBloc>()
                                .add(TasksEvent.delete(model)),
                            child: TaskWidget(
                              value.tasks[index],
                              onTap: () =>
                                  TaskScreen.openEditor(context, model.id).then(
                                      (value) => getIt<TasksBloc>()
                                          .add(TasksEvent.init())),
                            ),
                          );
                        },
                        itemCount: value.tasks.length,
                      );
                  }(),
                ),
            loading: (value) => Center(child: CircularProgressIndicator()),
            failure: (value) => FailureContainer(
                  onRepeat: () => getIt<TasksBloc>().add(value.event),
                )),
      ),
    );
  }

  void _onAddClick(BuildContext context) {
    TaskScreen.openCreator(context).then((value) {
      getIt<TasksBloc>().add(TasksEvent.init());
    });
  }
}
