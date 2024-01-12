import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class ListTodolistWidget extends StatefulWidget {
  final Function(bool?)? onChanged;
  final bool value;

  const ListTodolistWidget({super.key, required this.onChanged,required this.value});

  @override
  State<ListTodolistWidget> createState() => _ListTodolistWidgetState();
}

class _ListTodolistWidgetState extends State<ListTodolistWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
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
              value: widget.value,
              onChanged: widget.onChanged,
            ),
          ),
        ),
      ),
    );
  }
}
