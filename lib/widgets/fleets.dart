import 'package:flutter/material.dart';

class Fleets extends StatefulWidget {
  @override
  _FleetsState createState() => _FleetsState();
}

class _FleetsState extends State<Fleets> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              //borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://avatars.githubusercontent.com/u/45532895?v=4")),
            ),
          ),
        ),
        Container(
          child: Text("gamzeg...",
            style: TextStyle(fontSize: 10),
          ),
        )
      ],
    );
  }
}
