import 'package:flutter/material.dart';

class TopNavbar extends StatefulWidget {
  @override
  _TopNavbarState createState() => _TopNavbarState();
}

class _TopNavbarState extends State<TopNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 30, 8, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButtonview(
              icon: Icons.menu,
              color: Colors.blue,
            ),
            Container(
              height: 40,
              width: 40,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://i.pinimg.com/originals/b8/c8/46/b8c846a25866985a5719049b9f0c5890.png",)
                  ),
                ),
              ),
            ),
            Image(image: AssetImage('assets/icon.png'),
            width: 50,
            height: 50,
            )
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
