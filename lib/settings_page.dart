import 'package:flutter/material.dart';
import 'package:flutter_go_router/user_model.dart';

class SettingsPage extends StatelessWidget {
  User? user;

  SettingsPage({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings"),),
    );
  }
}
