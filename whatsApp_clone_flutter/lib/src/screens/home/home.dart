import 'package:flutter/material.dart';
import 'package:whatsApp_clone_flutter/config/config.dart';
import 'package:whatsApp_clone_flutter/src/screens/home/tabs/callsTab.dart';
import 'package:whatsApp_clone_flutter/src/screens/home/tabs/cameraTab.dart';
import 'package:whatsApp_clone_flutter/src/screens/home/tabs/chatTab.dart';
import 'package:whatsApp_clone_flutter/src/screens/home/tabs/statusTab.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            "WhatsApp",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: primaryColor,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera),
              ),
              Tab(
                child: Text("CHATS"),
              ),
              Tab(
                child: Text("STATUS"),
              ),
              Tab(
                child: Text("CALLS"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[CameraTab(), ChatTab(), StatusTab(), CallsTab()],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.chat),
          elevation: 1.0,
          backgroundColor: primaryColor,
        ),
      ),
    );
  }
}
