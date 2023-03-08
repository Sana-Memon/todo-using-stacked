import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:todo_app_using_stacked/view_model/home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Main Screen"),
              ElevatedButton(
                  onPressed: () {
                    viewModel.redirectToAllTasks();
                  },
                  child: Text("View All tasks")),
              ElevatedButton(onPressed: () {}, child: Text("View Done tasks")),
              ElevatedButton(
                  onPressed: () {}, child: Text("View Remaining tasks"))
            ],
          ),
        ),
      ),
    );
  }
}
