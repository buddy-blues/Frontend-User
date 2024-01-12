import 'package:buddy_blues/screens/history/widget/mood_history_widget.dart';
import 'package:buddy_blues/screens/home/widget/todolist_widget.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:buddy_blues/widget/list_todolist.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: ThemeColor().bluePrimary500,
            centerTitle: true,
            title: Text(
              "History",
              style: ThemeText().robotoMedium.copyWith(color: Colors.white),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
          body: const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                TabBar(
                  tabs: [
                    Column(
                      children: [Text("Mood"), SizedBox(height: 10)],
                    ),
                    Column(
                      children: [Text("To Do List"), SizedBox(height: 10)],
                    ),
                    Column(
                      children: [Text("Conselling"), SizedBox(height: 10)],
                    ),
                  ],
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.blue,
                  indicatorColor: Colors.blue,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, left: 21, right: 21),
                    child: TabBarView(
                      children: [
                        Column(
                          children: [
                            MoodHistoryWidget(),
                            MoodHistoryWidget(),
                            MoodHistoryWidget(),
                          ],
                        ),
                        Column(
                          children: [
                            ListTodolistWidget(isChecked: true),
                            ListTodolistWidget(isChecked: true),
                            ListTodolistWidget(isChecked: true),
                          ],
                        ),
                        // ToDoListWidget(),
                        Text("Halo "),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
