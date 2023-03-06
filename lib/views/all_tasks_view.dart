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
              ListView.builder(
                  itemCount: viewModel.grabingLengthfromService(),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        leading: const Icon(Icons.list),
                        trailing: Text(
                          "${viewModel.allTasks}",
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),
                        title: Text("List item $index"));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
