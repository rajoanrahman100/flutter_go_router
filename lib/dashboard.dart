import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),

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
