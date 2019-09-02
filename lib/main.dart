import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'ui/page_2.dart';

import 'ui/page_3.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: PageHome(),
    );
  }
}

class PageHome extends StatelessWidget {

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Project Pertama'),
        backgroundColor: Colors.green,
      ),

      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 35.0),
        child: Column(
          children: <Widget>[

            Image.asset('gambar/bea_cukai.png',
              height: 100.0, width: 100.0,),
            Text('Selamat Datang', style: TextStyle(
              fontSize: 24.0,
              color: Colors.blueGrey,

            )),

            SizedBox(height: 20.0,),
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,

              child: Text('Page 1'),
              onPressed: (){

                //pindah ke page 1
                //push --> ke
                //pop --> dari
                //context --> memanggil self class
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> Page1()));

                Fluttertoast.showToast(msg: "Ini adalah page 1",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.CENTER,
                  backgroundColor: Colors.orange,
                  textColor: Colors.white
                );

              },
            ),

            SizedBox(height: 20.0,),
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,

              child: Text('Page 2'),
              onPressed: (){

                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> Page2()));

                _scaffoldKey.currentState.showSnackBar
                  (new SnackBar(content: new Text('Hello!')));
//                final snackbar = SnackBar(content: Text('Ini page 2'),
//                  action: SnackBarAction(
//                    label: 'undo',
//                    onPressed: (){
//                      //some code will be here
//                    },
//                  ),
//                );
//                Scaffold.of(context).showSnackBar(snackbar);
              },
            ),

            SizedBox(height: 20.0,),
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,

              child: Text('Page 3'),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> Page3()));


              },
            )
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.home),
            title: Text('Home')
          ),

          BottomNavigationBarItem(icon: new Icon(Icons.message),
              title: Text('Inbox')
          ),

          BottomNavigationBarItem(icon: new Icon(Icons.person),
              title: Text('Profile')
          ),

        ],
      ),
    );
  }
}


class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,// menghilangkan back button
        title: Text('Page Row'),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: Row(
          //digunakan untuk mengisi ruang kosong pada layout
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.message, color: Colors.red, size: 50.0,),
            Icon(Icons.perm_contact_calendar,
              color: Colors.red, size: 50.0,),
            Icon(Icons.calendar_today, color: Colors.red, size: 50.0,),
          ],
        ),
      )

    );
  }
}

