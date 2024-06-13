import 'package:flutter/material.dart';
import 'pages/learn.dart';
import 'pages/review.dart';
import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Word App',
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/learn': (context) => LearnPage(),
        '/review': (context) => ReviewPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Word App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/learn');
              },
              child: Text('Learn Words'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/review');
              },
              child: Text('Review Words'),
            ),
          ],
        ),
      ),
    );
  }
}
