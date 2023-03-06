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
          child: Text("All Tasks Screen"),
        ),
      ),
    );
  }
}
