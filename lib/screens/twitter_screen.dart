import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/bottom_navbar.dart';
import 'package:twitter_clone/widgets/fab_button.dart';
import 'package:twitter_clone/widgets/fleets.dart';
import 'package:twitter_clone/widgets/top_navbar.dart';
import 'package:twitter_clone/widgets/tweets.dart';

class TwitterUi extends StatefulWidget {
  TwitterUi({Key key}) : super(key: key);
  @override
  _TwitterUiState createState() => _TwitterUiState();
}

class _TwitterUiState extends State<TwitterUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FabButton(),
      bottomNavigationBar: BottomNavbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopNavbar(),
            SizedBox(
              child: Divider(
                thickness: 1,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: fleetsRow(),
            ),
            SizedBox(
              child: Divider(
                thickness: 1,
              ),
            ),
            Tweets(),
            SizedBox(
              child: Divider(
                thickness: 1,
              ),
            ),
            Tweets(),
            SizedBox(
              child: Divider(
                thickness: 1,
              ),
            ),
            Tweets(),
            SizedBox(
              child: Divider(
                thickness: 1,
              ),
            ),
            Tweets(),
            SizedBox(
              child: Divider(
                thickness: 1,
              ),
            ),
            Tweets(),
            SizedBox(
              child: Divider(
                thickness: 1,
              ),
            ),
            Tweets(),
            SizedBox(
              child: Divider(
                thickness: 1,
              ),
            ),
            Tweets(),
          ],
        ),
      ),
    );
  }

  Row fleetsRow() {
    return Row(
      children: [
        SizedBox(
          width: 9,
        ),
        Fleets(),
        SizedBox(
          width: 9,
        ),
        Fleets(),
        SizedBox(
          width: 9,
        ),
        Fleets(),
        SizedBox(
          width: 9,
        ),
        Fleets(),
        SizedBox(
          width: 9,
        ),
        Fleets(),
        SizedBox(
          width: 9,
        ),
        Fleets(),
        SizedBox(
          width: 9,
        ),
      ],
    );
  }
}


