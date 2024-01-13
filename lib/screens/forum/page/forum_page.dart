import 'package:buddy_blues/screens/forum/widget/list_forum_widget.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/widget/buddyblues_appbar.dart';
import 'package:flutter/material.dart';

class ForumPage extends StatelessWidget {
  const ForumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: BuddyBluesAppBar(),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: ((context, index) {
          return const ListForumWidget(
            comment: '',
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/postforum');
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
