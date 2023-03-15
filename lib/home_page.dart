import 'package:flutter/material.dart';
import 'package:flutter_go_router/route_name.dart';
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
          child: Column(
            children: [
              ElevatedButton(onPressed: () {
                String name="Hello Rifat";
                GoRouter.of(context).goNamed(RouteName.dashBoard,params: {"name":name});

              }, child: const Text("Go to dashboard")),

              ElevatedButton(onPressed: () {
                String name="Hello Rifat";
                GoRouter.of(context).goNamed(RouteName.settings);
                //context.go("/dashboard");//Shorter link
              }, child: const Text("Go to settings")),
            ],
          ),
        ),
      ),
    );
  }
}
