import 'package:stacked/stacked_annotations.dart';
import 'package:todo_app_using_stacked/views/all_tasks_view.dart';
import 'package:todo_app_using_stacked/views/home_view.dart';
import 'package:todo_app_using_stacked/views/remaining_tasks_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: AllTasksView),
  MaterialRoute(page: RemainingTasksView),
  MaterialRoute(page: HomeView, initial: true)
], dependencies: [])
class App {}
