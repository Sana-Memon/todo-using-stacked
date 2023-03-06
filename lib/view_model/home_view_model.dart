import 'package:stacked/stacked.dart';
import 'package:todo_app_using_stacked/views/all_tasks_view.dart';
import 'package:todo_app_using_stacked/views/remaining_tasks_view.dart';

import '../views/home_view.dart';

class HomeViewModel extends BaseViewModel {
  int selectedIndex = 0;
  List _widgetOptions = [HomeView(), AllTasksView(), RemainingTasksView()];
  int index = 0;
  onItemTap() {
    selectedIndex = index;
  }
}
