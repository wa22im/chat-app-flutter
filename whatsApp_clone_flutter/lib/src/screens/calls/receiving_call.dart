import 'package:flutter/material.dart';
import 'package:whatsApp_clone_flutter/config/config.dart';
import 'package:whatsApp_clone_flutter/src/screens/home/tabs/statusTab.dart';

class ReceivingCall extends StatelessWidget {
  ReceivingCall({Key key}) : super(key: key);
  bool getcall = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              flex: 4,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 30,
                    ),
                    alignment: Alignment.bottomCenter,
                    width: MediaQuery.of(context).size.height / 6,
                    height: MediaQuery.of(context).size.height / 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://www.pngarts.com/files/5/User-Avatar-PNG-Image.png"),
                      ),
                    ),
                  ),
                  Text(
                    "Mohamed ",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 30.0),
                  )
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 5,
              child: Container(
                color: Colors.blueGrey[400],
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      padding: EdgeInsets.only(
                        right: 10,
                        bottom: 5,
                        left: 10,
                      ),
                      child: Column(
                        children: <Widget>[
                          DragTarget(
                            onAccept: (data) {},
                            builder: (context, candidateData, rejectedData) =>
                                Container(
                              child: CircleAvatar(
                                backgroundColor: Colors.black54,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Container(
                                  margin: EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                    color: Colors.black38,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                    child: Icon(
                                      Icons.call_end,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Draggable(
                                  feedback: Expanded(
                                    flex: 2,
                                    child: Container(
                                      margin: EdgeInsets.all(2.0),
                                      decoration: BoxDecoration(
                                        color: Colors.black38,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.black38,
                                        child: Icon(
                                          Icons.call,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.all(2.0),
                                    decoration: BoxDecoration(
                                      color: Colors.black38,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.green,
                                      child: Icon(
                                        Icons.call,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  margin: EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                    color: Colors.black38,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black38,
                                    child: Icon(
                                      Icons.textsms,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
