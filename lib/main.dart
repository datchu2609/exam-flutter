import 'package:exam_flutter/routeConfig.dart';
import 'package:exam_flutter/screen/Home.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: AppTheme.lightThem(context),
      title: 'EXAM',
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }

}