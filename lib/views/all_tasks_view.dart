import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:todo_app_using_stacked/view_model/all_tasks_view_model.dart';

class AllTasksView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AllTasksViewModel>.reactive(
      viewModelBuilder: () => AllTasksViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        body: Center(
          child: Column(
            children: [
              Text("All Tasks Screen"),
              Expanded(
                child: ListView.builder(
                    itemCount: viewModel.TasksTook.allTasks.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                          leading: const Icon(Icons.list),
                          title: Text("${viewModel.TasksTook.allTasks[index]}"),
                          trailing: GestureDetector(
                              onTap: (() {
                                viewModel.marksAsDone(index);
                              }),
                              child: Icon(Icons.done)));
                    }),
              ),
              ElevatedButton(
                  onPressed: () {
                    viewModel.navigateToDone();
                  },
                  child: Text("View Done Tasks")),
              ElevatedButton(
                  onPressed: () {
                    viewModel.navigateToAddNew();
                  },
                  child: Text("Add new Tasks")),
            ],
          ),
        ),
      ),
    );
  }
}
