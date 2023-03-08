import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:todo_app_using_stacked/view_model/all_tasks_view_model.dart';
import 'package:todo_app_using_stacked/view_model/remaining_tasks_view_model.dart';

class RemainingTasksView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RemainingTasksViewModel>.reactive(
      viewModelBuilder: () => RemainingTasksViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        body: Center(
          child: Column(
            children: [
              Text("Done Tasks Screen"),
              Expanded(
                child: ListView.builder(
                    itemCount: viewModel.TakingdoneTasks.doneTasks.length,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        title: Text(
                            "${viewModel.TakingdoneTasks.doneTasks[index]}"),
                      );
                    })),
              )
            ],
          ),
        ),
      ),
    );
  }
}
