import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Scaffold(
        appBar: new AppBar(
            title: new Text('Top Lakes')
        ),
        body: new ListView(
          children: <Widget>[
            buildImageSection(),
            buildTitleSection(),
            buildButtonsSection(context),
            buildTextSection()
          ],
        ),
      ),
    );
  }

  Widget buildImageSection() {
    return new Image.asset("images/lake.jpg",
        width: 600.0,
        height: 240.0,
        fit: BoxFit.cover);
  }

  Widget buildTitleSection() {
    return new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
          children: [
            new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: new Text("Oeschinen Lake Campground",
                        style: new TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  new Text("Kandersteg, Witzerland",
                      style: new TextStyle(color: Colors.grey[500])
                  )
                ],
              ),
            ),
            new Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            new Text('41'),
          ]
      ),
    );
  }

  Widget buildButtonsSection(BuildContext context) {

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme
          .of(context)
          .primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    return new Container(
      child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildButtonColumn(Icons.call, 'CALL'),
            buildButtonColumn(Icons.near_me, 'ROUTE'),
            buildButtonColumn(Icons.share, 'SHARE'),
          ]
      ),
    );
  }

  Widget buildTextSection() {
    return new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
        Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );
  }
}
