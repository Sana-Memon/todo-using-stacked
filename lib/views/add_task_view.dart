import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../view_model/add_new_task_view_model.dart';

class AddNewTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddNewTaskViewModel>.reactive(
      viewModelBuilder: () => AddNewTaskViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: Column(
          children: [
            Text("Write Name of Task"),
            TextField(
              controller: viewModel.addTask,
            ),
            ElevatedButton(
                onPressed: () {
                  viewModel.accessAllTask.allTasks.add(viewModel.addTask.text);
                  viewModel.MoveToAllTask();
                },
                child: Text("add"))
          ],
        ),
      ),
    );
  }
}
