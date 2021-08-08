import 'package:flutter/material.dart';
import 'package:portfolio_wec/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // themeMode: ThemeMode.dark,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colorse.forgroundColor,
        primaryColor: Colorse.primy,

        scaffoldBackgroundColor: Colorse.forgroundColor,
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
                child: Transform.rotate(
              origin: Offset(0, -1),
              angle: -3.14 / 14,
              child: Transform.scale(
                scale: 1.5,
                child: Container(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            )),
            Expanded(
              flex: 3,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
