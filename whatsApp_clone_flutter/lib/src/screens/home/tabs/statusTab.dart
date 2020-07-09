import 'package:flutter/material.dart';

final String imageUrl =
    "https://scontent.ftun1-1.fna.fbcdn.net/v/t1.0-9/fr/cp0/e15/q65/80607901_2739558566107009_6626383687250345984_o.jpg?_nc_cat=107&_nc_sid=85a577&efg=eyJpIjoidCJ9&_nc_oc=AQkF_2Q9G__Og7R8AePfJMGj1O9admB7TA1QRj4OzsIiyE2HruTfJrs0J4ctlWeF418&_nc_ht=scontent.ftun1-1.fna&_nc_tp=14&oh=55af4b8d265226de8857102687466b15&oe=5F2C6223";

class StatusTab extends StatelessWidget {
  const StatusTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Row(
        children: <Widget>[],
      ),
    );
  }

  Widget activeStatus(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          flex: 2,
          child: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
          ),
        ),
        Flexible(
          flex: 1,
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 12,
            width: MediaQuery.of(context).size.height / 12,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.people,
                color: Colors.green,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
