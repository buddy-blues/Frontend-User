import 'package:buddy_blues/screens/home/widget/header_menu.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:buddy_blues/widget/list_todolist.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ToDoListWidget extends StatefulWidget {
  const ToDoListWidget({super.key});

  @override
  State<ToDoListWidget> createState() => _ToDoListWidgetState();
}

class _ToDoListWidgetState extends State<ToDoListWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderMenuWidget(
          title: "Your To-Do List",
          onTap: () {
            Navigator.pushNamed(context, '/todolist');
          },
        ),
        const SizedBox(height: 10),
        LinearPercentIndicator(
          barRadius: const Radius.circular(30),
          width: MediaQuery.of(context).size.width - 40,
          lineHeight: 28,
          percent: 0.5,
          center: Text(
            "50%",
            style: ThemeText()
                .robotoMedium12
                .copyWith(color: ThemeColor().neutral900),
          ),
          backgroundColor: ThemeColor().secondary50,
          progressColor: ThemeColor().secondary400,
        ),
        const SizedBox(height: 20),
        ListTodolistWidget(
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
            value: isChecked)
      ],
    );
  }
}
