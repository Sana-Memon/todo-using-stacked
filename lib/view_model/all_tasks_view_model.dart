import 'package:stacked/stacked.dart';
import 'package:todo_app_using_stacked/app/app.locator.dart';
import 'package:todo_app_using_stacked/services/task_service.dart';

class AllTasksViewModel extends BaseViewModel {
  final allTasks = locator<TaskSerice>();
  grabingLengthfromService() {
    allTasks.takingLength();
  }
}
