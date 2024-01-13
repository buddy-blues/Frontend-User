import 'package:buddy_blues/screens/conselling/widget/list_expert.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/widget/buddyblues_appbar.dart';
import 'package:buddy_blues/widget/search_bar_widget.dart';
import 'package:flutter/material.dart';

class ConsellingPage extends StatelessWidget {
  const ConsellingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: BuddyBluesAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SearchBarWidget(),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ListtExpertWidget(
                        btnTitle: 'See Detail', btnColor: ThemeColor().bluePrimary200,
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
