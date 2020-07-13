import 'package:flutter/material.dart';
import 'package:whatsApp_clone_flutter/src/screens/chat/ChatScreen.dart';
import '../../../models/chat_item_model.dart';

class ChatTab extends StatelessWidget {
  final List<ChatItem> chatList = new List<ChatItem>();

  ChatTab({Key key}) {
    for (int i = 0; i < 10; i++) {
      ChatItem chi = new ChatItem(
          "https://i.picsum.photos/id/1/5616/3744.jpg?hmac=kKHwwU8s46oNettHKwJ24qOlIAsWN9d2TtsXDoCWWsQ",
          "user $i",
          "message $i",
          "2020-06-01");
      chatList.add(chi);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(chatList[index].name),
              subtitle: Text(chatList[index].lastMessage),
              trailing: Text(chatList[index].date),
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(chatList[index].profileURL),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatScreen(
                      person: chatList[index],
                    ),
                  ),
                );
              },
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: 10),
    );
  }
}
