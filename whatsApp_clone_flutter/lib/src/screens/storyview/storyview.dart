import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryViewScreen extends StatelessWidget {
  const StoryViewScreen({Key key}) : super(key: key);
  final controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return StoryView();
  }
}
