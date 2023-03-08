import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:todo_app_using_stacked/app/app.locator.dart';
import 'package:todo_app_using_stacked/app/app.router.dart';
import 'package:todo_app_using_stacked/views/all_tasks_view.dart';
import 'package:todo_app_using_stacked/views/remaining_tasks_view.dart';

import '../views/home_view.dart';

class HomeViewModel extends BaseViewModel {
  final nav = locator<NavigationService>();

  redirectToAllTasks() {
    nav.navigateToAllTasksView();
  }
}
