import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Cards")),
      body: SizedBox.expand(
        child: PageView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              color: Colors.red,
              child: const Center(child: Text("Page 1")),
            ),
            Container(
              color: Colors.blue,
              child: const Center(child: Text("Page 2")),
            ),
            Container(
              color: Colors.green,
              child: const Center(child: Text("Page 3")),
            ),
          ],
        ),
      ),
    );
  }
}
