import 'package:buddy_blues/screens/forum/widget/list_forum_widget.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:buddy_blues/widget/basic_appbar.dart';
import 'package:buddy_blues/widget/main_button.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/la.dart';

class CommentForumPage extends StatefulWidget {
  const CommentForumPage({super.key});

  @override
  State<CommentForumPage> createState() => _CommentForumPageState();
}

class _CommentForumPageState extends State<CommentForumPage> {
  bool loveSolid = false;
  final loveIcon = Iconify;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: BasicAppbar(title: "Forum"),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              const ListTile(
                title: Text("Amalia Anggraeni"),
                subtitle: Text("18 h"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "http://www.venmond.com/demo/vendroid/img/avatar/big.jpg"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "My baby was very fussy yesterday, my husband got angry and pinched his hand until it turned blue. today I have to take care of him alone because he left home.",
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 12),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/commentforum");
                          },
                          icon: const Iconify(La.comment_alt),
                        ),
                        const Text("10")
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              loveSolid = !loveSolid;
                            });
                          },
                          icon: Iconify(
                            (loveSolid == false ? La.heart : La.heart_solid),
                            color: (loveSolid == false
                                ? Colors.black
                                : Colors.red),
                          ),
                        ),
                        const Text("50")
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share),
                    )
                  ],
                ),
              ),
              const Divider(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 146),
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const ListForumWidget(
                        comment: 'Comments',
                      );
                    },
                  ),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Sri Ratna",
                        style: ThemeText().robotoMedium20,
                      ),
                      leading: const CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            "https://i.pinimg.com/originals/60/e0/3b/60e03b25d0829ec560b3f472e84cd23a.jpg"),
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Reply here",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                          height: 40,
                          width: 70,
                          child: MainButtonWidget(
                            title: "Post",
                            onPressed: () {},
                            isEnabled: true,
                          )),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
