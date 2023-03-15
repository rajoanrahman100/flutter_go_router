import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: ElevatedButton(onPressed: () {
            GoRouter.of(context).go("/dashboard");
            //context.go("/dashboard");//Shorter link
          }, child: const Text("Go to dashboard")),
        ),
      ),
    );
  }
}
