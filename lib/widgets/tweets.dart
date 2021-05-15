import 'package:flutter/material.dart';

class Tweets extends StatelessWidget {
  const Tweets({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 1, child: leftSide()),
          Expanded(flex: 4, child: middle()),
          Expanded(flex: 1, child: rightSide()),
        ],
      ),
    );
  }

  Container middle() => Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Gamze Gürcan",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  Text("@gamzegurcann . 18dk")
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                  "Merhaba Twitter, bu tweet twitter ui clone uygulaması için atılmıştır. :)"),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                height: 200,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://static.birgun.net/resim/haber-detay-resim/2020/11/19/kedilerin-miyavlamasini-cevirecek-uygulama-gelistirildi-806791-5.jpg")),
                  ),
                ),
              ),
              Container(
                child: TweetsIcon(),
              )
            ],
          ),
        ),
      );

  Container rightSide() => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
            SizedBox(
              height: 30,
            )
          ],
        ),
      );

  Container leftSide() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 4, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              width: 70,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://avatars.githubusercontent.com/u/45532895?v=4")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TweetsIcon extends StatelessWidget {
  const TweetsIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButtonTweets(
          icon: Icons.message,
          color: Colors.grey,
          text: "5",
        ),
        IconButtonTweets(
            icon: Icons.crop_rotate, color: Colors.grey, text: "30"),
        IconButtonTweets(icon: Icons.favorite, color: Colors.red, text: "300"),
        IconButtonTweets(icon: Icons.file_upload, color: Colors.grey, text: ""),
      ],
    );
  }
}

class IconButtonTweets extends StatelessWidget {
  final icon;
  final color;
  final String text;
  IconButtonTweets({
    this.text,
    this.icon,
    this.color,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
            icon: Icon(
              icon,
              color: color,
            ),
            onPressed: null),
        Text(text),
      ],
    );
  }
}
