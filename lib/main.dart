import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:todo_app_using_stacked/app/app.locator.dart';
import 'package:todo_app_using_stacked/app/app.router.dart';
import 'package:todo_app_using_stacked/views/home_view.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
