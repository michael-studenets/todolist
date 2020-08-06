import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/shared/di/injector.dart';

import 'app.dart';
import 'todo_bloc_delegate.dart';

void main() async {
  await configureDependencies();

  Bloc.observer = TodoBlocDelegate();

  runApp(TodoApp());
}
