import 'package:buddy_blues/screens/todolist/widget/timepicker_widget.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:buddy_blues/widget/basic_appbar.dart';
import 'package:buddy_blues/widget/main_button.dart';
import 'package:buddy_blues/widget/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ParsingDateFormat {
  String dateFormat(DateTime dateTime) {
    return DateFormat('dd MMMM yyyy').format(dateTime);
  }
}

class AddTodolistPage extends StatefulWidget {
  const AddTodolistPage({Key? key}) : super(key: key);

  @override
  State<AddTodolistPage> createState() => _AddTodolistPageState();
}

class _AddTodolistPageState extends State<AddTodolistPage> {
  String selectedDate = "";
  DateTime currentDate = DateTime.now();
  DateTime dueDate = DateTime.now();
  final dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: BasicAppbar(title: "To Do List"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TextfieldWidget(
                title: "Thing you have to do",
                labelTextField: '',
                isEnabled: true,
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "When?",
                    style:
                        ThemeText().robotoRegular.copyWith(color: Colors.black),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: dateController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () async {
                          final selectDate = await showDatePicker(
                            context: context,
                            initialDate: currentDate,
                            firstDate: DateTime(1990),
                            lastDate: DateTime(2050),
                          );

                          if (selectDate != null) {
                            dueDate = selectDate;
                            currentDate = selectDate;
                            setState(() {
                              selectedDate =
                                  ParsingDateFormat().dateFormat(dueDate);
                              dateController.text = selectedDate;
                            });
                          }
                        },
                        icon: const Icon(Icons.date_range),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "From",
                          style: ThemeText()
                              .robotoRegular
                              .copyWith(color: Colors.black),
                        ),
                        const TimePickerWidget(),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "To",
                          style: ThemeText()
                              .robotoRegular
                              .copyWith(color: Colors.black),
                        ),
                        const TimePickerWidget(),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              MainButtonWidget(
                title: "Submit",
                onPressed: () {},
                isEnabled: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
