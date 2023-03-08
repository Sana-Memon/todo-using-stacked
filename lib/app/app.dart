import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:todo_app_using_stacked/services/task_service.dart';
import 'package:todo_app_using_stacked/views/add_task_view.dart';
import 'package:todo_app_using_stacked/views/all_tasks_view.dart';
import 'package:todo_app_using_stacked/views/home_view.dart';
import 'package:todo_app_using_stacked/views/remaining_tasks_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: AllTasksView),
  MaterialRoute(page: RemainingTasksView),
  MaterialRoute(page: AddNewTask),
  MaterialRoute(page: HomeView, initial: true)
], dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: TaskSerice)
])
class App {}
