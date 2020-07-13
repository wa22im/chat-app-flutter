import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

const String imagurl =
    "https://scontent.ftun1-1.fna.fbcdn.net/v/t1.0-9/fr/cp0/e15/q65/80607901_2739558566107009_6626383687250345984_o.jpg?_nc_cat=107&_nc_sid=85a577&efg=eyJpIjoidCJ9&_nc_oc=AQkF_2Q9G__Og7R8AePfJMGj1O9admB7TA1QRj4OzsIiyE2HruTfJrs0J4ctlWeF418&_nc_ht=scontent.ftun1-1.fna&_nc_tp=14&oh=55af4b8d265226de8857102687466b15&oe=5F2C6223";

class StoryViewScreen extends StatelessWidget {
  final storycontroller = StoryController();
  StoryViewScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<StoryItem> stories = [
      StoryItem.text(
        "my story hope u like it ",
        Colors.amber,
      ),
      StoryItem.pageImage(
        NetworkImage(imagurl),
      )
    ];
    return Material(
      child: StoryView(
        stories,
        controller: storycontroller,
        onComplete: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
