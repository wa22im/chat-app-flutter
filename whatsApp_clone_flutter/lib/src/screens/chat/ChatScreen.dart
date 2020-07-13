import 'package:flutter/material.dart';
import 'package:whatsApp_clone_flutter/config/config.dart';
import 'package:whatsApp_clone_flutter/src/models/chat_item_model.dart';
import 'package:whatsApp_clone_flutter/src/models/chat_message_model.dart';

class ChatScreen extends StatelessWidget {
  final ChatItem person;

  const ChatScreen({Key key, this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        mini: true,
        backgroundColor: primaryColor,
        child: Icon(Icons.send),
      ),
      backgroundColor: Color(0xFFECE5DD),
      appBar: AppBar(
        title: Text(person.name),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              itemCount: ChatMessage.messages.length,
              itemBuilder: (context, index) =>
                  renderChatMessage(ChatMessage.messages[index]),
            ),
          ),
          Divider(),
          Container(
            child: renderTextBox(context),
          )
        ],
      ),
    );
  }

  Widget renderChatMessage(ChatMessage chatMessage) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: FittedBox(
        fit: BoxFit.none,
        alignment: chatMessage.isSentByMe
            ? Alignment.centerLeft
            : Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.only(right: 10, top: 0, bottom: 0, left: 10),
          margin: EdgeInsets.only(right: 10, top: 0, bottom: 0, left: 10),
          decoration: BoxDecoration(color: Color(0xFFDCF8C6), boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: Colors.black45,
              offset: Offset(2, 2),
            ),
          ]),
          child: Text(
            chatMessage.message,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          alignment:
              chatMessage.isSentByMe ? Alignment.topRight : Alignment.topLeft,
        ),
      ),
    );
  }

  Widget renderTextBox(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: MediaQuery.of(context).size.width / 7,
        top: 5,
        bottom: 2,
        left: 2,
      ),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              decoration: InputDecoration.collapsed(hintText: "send a message"),
            ),
          ),
          IconButton(
            icon: Icon(Icons.attachment),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
