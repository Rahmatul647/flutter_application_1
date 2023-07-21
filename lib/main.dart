import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutorial Flutter',
      theme: ThemeData(
       primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/4.jpg',
                width: 200,
                height: 200
            ),
            SizedBox(height: 16),
            Text(
              'Halo dunia tipu tipu!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            RaisedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Love You Sayanggku'),
                      content: Text('ThankYou<3!'),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('Tutup'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );


                // TODO: implement build
              },
              child: Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}


