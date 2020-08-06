import 'package:flutter/cupertino.dart';
import 'package:todoapp/features/splash/screen/splash_screen.dart';
import 'package:todoapp/features/task/screen/task_screen.dart';
import 'package:todoapp/features/tasks/screen/tasks_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  TasksScreen.routeName: (context) => TasksScreen(),
  TaskScreen.routeName: (context) => TaskScreen(),
};
