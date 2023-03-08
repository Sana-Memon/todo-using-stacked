import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:todo_app_using_stacked/app/app.locator.dart';
import 'package:todo_app_using_stacked/app/app.router.dart';
import 'package:todo_app_using_stacked/services/task_service.dart';

class AllTasksViewModel extends BaseViewModel {
  final TasksTook = locator<TaskSerice>();
  final nav = locator<NavigationService>();

  navigateToDone() {
    nav.navigateToRemainingTasksView();
    rebuildUi();
  }

  navigateToAddNew() {
    nav.navigateToAddNewTask();
    rebuildUi();
  }

  grabingAllTasks() {
    TasksTook.allTasks;
    TasksTook.doneTasks;
    rebuildUi();
  }

  marksAsDone(int index) {
    TasksTook.doneTasks.add(TasksTook.allTasks[index]);
    TasksTook.allTasks.removeAt(index);
    print(TasksTook.allTasks);
    rebuildUi();
  }
}
