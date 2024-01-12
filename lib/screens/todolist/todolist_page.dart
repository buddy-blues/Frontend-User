import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:buddy_blues/widget/list_todolist.dart';
import 'package:flutter/material.dart';

class TodolistPage extends StatefulWidget {
  const TodolistPage({super.key});

  @override
  State<TodolistPage> createState() => _TodolistPageState();
}

class _TodolistPageState extends State<TodolistPage> {
  List<bool> isChecked = [false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: ThemeColor().bluePrimary500,
        centerTitle: true,
        title: Text(
          "To Do List",
          style: ThemeText().robotoMedium.copyWith(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return ListTodolistWidget(
                onChanged: (value) {
                  setState(() {
                    isChecked[index] = value ?? false;
                  });
                },
                value: isChecked[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addtodolist');
        },
        backgroundColor: ThemeColor().bluePrimary50,
        child: Icon(
          Icons.add,
          color: ThemeColor().neutral900,
        ),
      ),
    );
  }
}
