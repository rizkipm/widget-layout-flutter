import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,// menghilangkan back button
        title: Text('Page 2'),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Ini Page 2', style: TextStyle(fontSize: 24.0),),
            Text('Training', style: TextStyle(fontSize: 24.0),),
            Text('Flutter', style: TextStyle(fontSize: 24.0),),
            Text('Atambua', style: TextStyle(fontSize: 24.0),),

          ],
        ),
      ),

    );
  }
}
