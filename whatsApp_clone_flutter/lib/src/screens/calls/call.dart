import 'package:flutter/material.dart';
import 'package:whatsApp_clone_flutter/config/config.dart';
import 'package:whatsApp_clone_flutter/src/screens/home/tabs/statusTab.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        title: Text("calling"),
      ),
      body: Container(
        color: primaryColor,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              height: MediaQuery.of(context).size.height / 8,
              child: Column(
                children: <Widget>[
                  Text(
                    "Caller Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Calling ...",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: (MediaQuery.of(context).size.height / 8) * 5,
              child: Flexible(
                flex: 10,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Container(
                      color: Colors.grey,
                      child: Image.network(imageUrl),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                        alignment: Alignment.bottomCenter,
                        color: Colors.red,
                        icon: Icon(Icons.call_end),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 8,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: IconButton(
                          icon: Icon(
                            Icons.speaker_phone,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: IconButton(
                          icon: Icon(
                            Icons.video_call,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: IconButton(
                          icon: Icon(
                            Icons.mic,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
