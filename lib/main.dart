import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: soir(),
    );
  }
}

class soir extends StatefulWidget {
  @override
  _soirState createState() => _soirState();
}

class _soirState extends State<soir> {
  var info = "DaAntonio welcome";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    info = 'Binvenue sur le tuto';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(info),
      ),
      body: RaisedButton(
        child: Text('valider'),
        onPressed: () {
          print('===validation ok===');
          setState(() {
            info = 'changer title';
          });
        },
      ),
    );
  }
}
