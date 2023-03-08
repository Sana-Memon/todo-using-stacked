import 'package:stacked/stacked.dart';

import '../app/app.locator.dart';
import '../services/task_service.dart';

class RemainingTasksViewModel extends BaseViewModel {
  final TakingdoneTasks = locator<TaskSerice>();

  grabingAllDoneTasks() {
    TakingdoneTasks.doneTasks;
    rebuildUi();
  }
}
