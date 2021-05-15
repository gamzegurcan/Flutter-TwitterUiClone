import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButtonview(
              icon: Icons.home,
              color: Colors.blue,
            ),
            IconButtonview(
              icon: Icons.search,
              color: Colors.grey,
            ),
            IconButtonview(
              icon: Icons.notifications,
              color: Colors.grey,
            ),
            IconButtonview(
              icon: Icons.email,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

class IconButtonview extends StatelessWidget {
  final icon;
  final color;
  const IconButtonview({
    this.icon,
    this.color,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 36,
      onPressed: () {},
      icon: Icon(
        icon,
        color: color,
      ),
    );
  }
}
