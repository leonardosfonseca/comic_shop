import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Comic Shop',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryIconTheme: IconThemeData(
            color: Colors.black54,
          )),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
