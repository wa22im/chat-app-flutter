import 'package:flutter/material.dart';
import 'package:whatsApp_clone_flutter/src/screens/storyview/storyview.dart';

final String imageUrl =
    "https://scontent.ftun1-1.fna.fbcdn.net/v/t1.0-9/fr/cp0/e15/q65/80607901_2739558566107009_6626383687250345984_o.jpg?_nc_cat=107&_nc_sid=85a577&efg=eyJpIjoidCJ9&_nc_oc=AQkF_2Q9G__Og7R8AePfJMGj1O9admB7TA1QRj4OzsIiyE2HruTfJrs0J4ctlWeF418&_nc_ht=scontent.ftun1-1.fna&_nc_tp=14&oh=55af4b8d265226de8857102687466b15&oe=5F2C6223";

class StatusTab extends StatelessWidget {
  const StatusTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 1,
      separatorBuilder: (context, index) => Divider(),
      itemBuilder: (ctx, index) {
        return ListTile(
          title: Text(
            "My Status",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text("Tap to add status upadate"),
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(imageUrl),
            child: Container(
              alignment: Alignment.bottomRight,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green[200],
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => StoryViewScreen(),
              ),
            );
          },
        );
      },
    );
  }
}
