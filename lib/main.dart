import 'package:flutter/material.dart';
import 'package:genmish/homepage.dart';
import 'package:genmish/product_description/components/details_screen.dart';
import 'package:genmish/splash/splash_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedSplashScreen(),
      routes: {DetailsScreen.routeName: (context) => DetailsScreen()},
    );
  }
}
