import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: '列表展示-Flutter',
      home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('列表展示-Flutter'),
          ),
          child: SafeArea(child: Home())),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
//        print('render $index');
        String imagename = 'resource/car-${index % 5}.png';
        return Column(
          children: <Widget>[
            Container(
              height: 140,
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset(
                          imagename,
                          fit: BoxFit.fill,
                          height: 100,
                          width: 100,
                        ),
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${index}行',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '第${index}行的展示效果\n第${index}行的展示效果\n第${index}行的展示效果',
                        style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 0.5,
              color: Colors.grey,
            )
          ],
        );
      },
      itemCount: 1000,
    );
  }
}
