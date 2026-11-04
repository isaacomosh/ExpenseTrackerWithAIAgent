import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class GoalDetails extends StatefulWidget {
  const GoalDetails({super.key});

  @override
  State<GoalDetails> createState() => _GoalDetailsState();
}

class _GoalDetailsState extends State<GoalDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 226, 226),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 227, 226, 226),
        leading: Icon(Icons.arrow_back_outlined),
        centerTitle: true,
        title: Text(
          'Goal Detail',
          style: GoogleFonts.nunito(fontWeight: FontWeight.bold),
        ),
        actions: [Icon(Iconsax.menu)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Iconsax.car,
                      color: Colors.green,
                      size: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(children: [
                    
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
