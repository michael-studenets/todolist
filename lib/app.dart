import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/features/splash/screen/splash_screen.dart';
import 'package:todoapp/features/task/bloc/task_bloc.dart';
import 'package:todoapp/features/tasks/bloc/tasks_bloc.dart';
import 'routes.dart';
import 'shared/di/injector.dart';

class TodoApp extends StatelessWidget {
  final String env;

  const TodoApp({Key key, this.env}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TasksBloc>(
          create: (BuildContext context) => getIt<TasksBloc>(),
        ),
        BlocProvider<TaskBloc>(
          create: (BuildContext context) => getIt<TaskBloc>(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(color: Colors.blue),
          backgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: routes,
        initialRoute: SplashScreen.routeName,
      ),
    );
  }
}
