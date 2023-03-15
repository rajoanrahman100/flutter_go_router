import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashBoard extends StatelessWidget {


   String? name;

   DashBoard({this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$name"),

      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: ElevatedButton(onPressed: () {
            GoRouter.of(context).go("/");
          }, child: const Text("Go to homepage")),
        ),
      ),
    );
  }
}
