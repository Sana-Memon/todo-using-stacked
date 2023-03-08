import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:todo_app_using_stacked/app/app.locator.dart';
import 'package:todo_app_using_stacked/app/app.router.dart';
import 'package:todo_app_using_stacked/services/task_service.dart';

class AddNewTaskViewModel extends BaseViewModel {
  TextEditingController addTask = TextEditingController();
  final accessAllTask = locator<TaskSerice>();
  final nav = locator<NavigationService>();

  grabingAllTasks() {
    accessAllTask.allTasks;
    rebuildUi();
  }

  MoveToAllTask() {
    nav.navigateToAllTasksView();
    rebuildUi();
  }
}
