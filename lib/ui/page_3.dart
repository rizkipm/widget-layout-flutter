import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Page 3'),
      ),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.home, color: Colors.orange,size: 40,),
              Text('Home',style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.present_to_all, color: Colors.orange,size: 40,),
              Text('Present',style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.calendar_today, color: Colors.orange,size: 40,),
              Text('Calender',style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          )
        ],
      ),
    );
  }
}
