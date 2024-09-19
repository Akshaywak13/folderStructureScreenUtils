import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:const Text("Folder Structure"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: [
           const Text("Folder Structure demo"),
            ElevatedButton(onPressed: (){}, child:const Text("Next"))
          ],
        ),
      ),
    );
  }
}