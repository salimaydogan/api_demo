import 'package:api_demo/Data.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api Demo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Data data = Data();
                data.allUsers();
              },
              icon: const Icon(Icons.supervised_user_circle),
              label: const Text("All Users"),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Data data = Data();
                data.singleUser(2);
              },
              icon: const Icon(Icons.supervised_user_circle),
              label: const Text("Single User (ID:2)"),
            ),
          ],
        ),
      ),
    );
  }
}
