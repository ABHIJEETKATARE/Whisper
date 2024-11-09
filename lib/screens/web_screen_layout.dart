import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whisper/screens/mobile_screen_layout.dart';
import 'package:whisper/widgets/chat_list.dart';
import 'package:whisper/widgets/contacts_list.dart';
import 'package:whisper/widgets/web_chat_appbar.dart';
import 'package:whisper/widgets/web_profile_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [WebProfileBar(), ContactsList()],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                ChatAppBar(),
                const SizedBox(height: 20),
                const Expanded(
                  child: ChatList(),
                ),
              ],
            ),
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/backgroundImage.png')),
            ),
          )
        ],
      ),
    );
  }
}
