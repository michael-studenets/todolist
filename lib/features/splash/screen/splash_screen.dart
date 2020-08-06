import 'package:flutter/material.dart';
import 'package:todoapp/features/tasks/screen/tasks_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash';

  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) =>
        Navigator.pushNamedAndRemoveUntil(
            context, TasksScreen.routeName, (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Todo Test App')));
  }
}
