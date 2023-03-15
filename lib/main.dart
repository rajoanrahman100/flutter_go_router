import 'package:flutter/material.dart';
import 'package:flutter_go_router/dashboard.dart';
import 'package:flutter_go_router/home_page.dart';
import 'package:flutter_go_router/settings_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
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
      routerConfig: router, //Pass the router object
    );
  }

  final router = GoRouter(
      //initialLocation: "/settings", //This route will initialise first in "initialLocation"
      routes: [
        GoRoute(path: "/", builder: ((context, state) => HomePage())), //Initial route
        GoRoute(path: "/dashboard", builder: ((context, state) => DashBoard())),
        GoRoute(path: "/settings", builder: ((context, state) => SettingsPage())),
      ]);
}
