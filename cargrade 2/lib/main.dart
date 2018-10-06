import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Exclusive Luxury Vehicles For Sale',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "O'Gara Coach Dealership",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.yellow[800],
          ),
          Text('41'),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'Talk'),
          buildButtonColumn(Icons.near_me, 'Route'),
          buildButtonColumn(Icons.share, 'Connect'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        '''
In no uncertain terms, Rolls-Royce was broadcasting to the nouveau riche that it was 
getting its freak on. With Black Badge, stuffy was out and badass was in. According to 
Torsten Müller-Ötvös, who has been at the helm of Rolls-Royce Motor Cars since 2010, 
“Black Badge appeals to those people who are elusive and defiant, the risk takers and 
disrupters who break the rules and laugh in the face of convention.”
        ''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'CarGrade',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CarGrade'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/car.JPG',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
