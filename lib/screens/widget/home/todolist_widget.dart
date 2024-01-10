import 'package:buddy_blues/screens/widget/home/header_menu.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ToDoListWidget extends StatefulWidget {
  const ToDoListWidget({super.key});

  @override
  State<ToDoListWidget> createState() => _ToDoListWidgetState();
}

class _ToDoListWidgetState extends State<ToDoListWidget> {
  bool? isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderMenuWidget(
          title: "Your To-Do List",
          onTap: () {},
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
        Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              title: Text(
                "Go To Doctor",
                style: ThemeText().robotoSmallSemiBold,
              ),
              subtitle: Text(
                "Today on 10:00 AM",
                style: ThemeText()
                    .robotoMedium12
                    .copyWith(color: ThemeColor().netural700),
              ),
              trailing: Transform.scale(
                scale: 1.2,
                child: Checkbox(
                  checkColor: Colors.white,
                  activeColor: ThemeColor().bluePrimary300,
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ))
      ],
    );
  }
}
