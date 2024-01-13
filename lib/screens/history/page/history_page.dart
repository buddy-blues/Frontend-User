import 'package:buddy_blues/screens/conselling/widget/list_expert.dart';
import 'package:buddy_blues/screens/history/widget/mood_history_widget.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/widget/basic_appbar.dart';
import 'package:buddy_blues/widget/list_todolist.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final int indexTapbar = ModalRoute.of(context)!.settings.arguments as int;

    return DefaultTabController(
      initialIndex: indexTapbar,
      length: 3,
      child: Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: BasicAppbar(title: "History"),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                const TabBar(
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
                    padding:
                        const EdgeInsets.only(top: 10, left: 21, right: 21),
                    child: TabBarView(
                      children: [
                        const Column(
                          children: [
                            MoodHistoryWidget(),
                            MoodHistoryWidget(),
                            MoodHistoryWidget(),
                          ],
                        ),
                        Column(
                          children: [
                            ListTodolistWidget(
                              onChanged: (value) {},
                              value: true,
                            ),
                            ListTodolistWidget(
                              onChanged: (value) {},
                              value: true,
                            ),
                            ListTodolistWidget(
                              onChanged: (value) {},
                              value: true,
                            ),
                          ],
                        ),
                        ListView(
                          children: [
                            ListtExpertWidget(
                              btnTitle: "Confirming",
                              btnColor: ThemeColor().green,
                            ),
                            const SizedBox(height: 10),
                            ListtExpertWidget(
                              btnTitle: "Confirming",
                              btnColor: ThemeColor().green,
                            ),
                            const SizedBox(height: 10),
                            ListtExpertWidget(
                              btnTitle: "Bookded",
                              btnColor: ThemeColor().bluePrimary200,
                            ),
                            const SizedBox(height: 10),
                            ListtExpertWidget(
                              btnTitle: "Bookded",
                              btnColor: ThemeColor().bluePrimary200,
                            ),
                            const SizedBox(height: 10),
                            ListtExpertWidget(
                              btnTitle: "Bookded",
                              btnColor: ThemeColor().bluePrimary200,
                            ),
                          ],
                        )
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
