import 'package:exptracker/screens/settings.dart';
import 'package:exptracker/screens/wallets.dart';
import 'package:flutter/material.dart';

class Card extends StatefulWidget {
  const Card({super.key});

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
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
    );
  }
}
