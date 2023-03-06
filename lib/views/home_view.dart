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
          child: Text("Main Screen"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.all_inbox), label: "All tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.done), label: "Done Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.read_more), label: "Remaining Tasks"),
          ],
          currentIndex: viewModel.selectedIndex,
          onTap: viewModel.onItemTap(),
        ),
      ),
    );
  }
}
