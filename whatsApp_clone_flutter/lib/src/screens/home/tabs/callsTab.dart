import 'package:flutter/material.dart';
import 'package:whatsApp_clone_flutter/config/config.dart';
import '../../../models/chat_item_model.dart';

class CallsTab extends StatelessWidget {
  List<ChatItem> chatList = new List<ChatItem>();
  CallsTab({Key key}) {
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
              subtitle: Text(chatList[index].date),
              trailing: IconButton(
                color: primaryColor,
                icon: Icon(Icons.call),
                onPressed: () {},
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(chatList[index].profileURL),
              ),
              onTap: () {},
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: 10),
    );
  }
}
