import 'package:flutter/material.dart';

class FabButton extends StatelessWidget {
  const FabButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.edit
      ),
    );
  }
}