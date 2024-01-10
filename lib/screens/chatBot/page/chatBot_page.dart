import 'package:buddy_blues/screens/chatBot/widget/bot_chat.dart';
import 'package:buddy_blues/screens/chatBot/widget/user_chat.dart';
import 'package:buddy_blues/theme/theme_colorstyle.dart';
import 'package:buddy_blues/theme/theme_textstyle.dart';
import 'package:flutter/material.dart';

class ChatbotPage extends StatelessWidget {
  const ChatbotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: ThemeColor().bluePrimary500,
          centerTitle: true,
          title: Text(
            "ChatBot AI",
            style: ThemeText().robotoMedium.copyWith(color: Colors.white),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: ListView(
                children: const [
                  BotBubleChatWidget(
                    message: "Hi! How can I help you today?",
                  ),
                  UserBubleChatWidget(
                      message: "I don't know what to do with my baby"),
                  BotBubleChatWidget(
                    message:
                        "If you're feeling overhelmed or unsure about specific aspects of baby care, don't hesitate to seek guidance from experienced parents, friends, family or professionals. Parenting is a learning process, and it's okay to ask for help",
                  ),
                  UserBubleChatWidget(
                      message: "I don't know what to do with my baby"),
                  BotBubleChatWidget(
                    message:
                        "If you're feeling overhelmed or unsure about specific aspects of baby care, don't hesitate to seek guidance from experienced parents, friends, family or professionals. Parenting is a learning process, and it's okay to ask for help",
                  ),
                  UserBubleChatWidget(
                      message: "I don't know what to do with my baby"),
                  BotBubleChatWidget(
                    message:
                        "If you're feeling overhelmed or unsure about specific aspects of baby care, don't hesitate to seek guidance from experienced parents, friends, family or professionals. Parenting is a learning process, and it's okay to ask for help",
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                height: 80,
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
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: ThemeText().robotoSmallSemiBold,
                          border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(25),
                              ),
                              borderSide:
                                  BorderSide(color: ThemeColor().netural700)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: ThemeColor().darkPurple,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
