import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Welcome, Username",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Row(
                      children: [
                        Icon(Iconsax.setting_25, color: Colors.grey, size: 27),
                        SizedBox(width: 20),
                        Icon(
                          Iconsax.logout_1,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          size: 27,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Column(
                        children: [
                          //top blur ccontainer
                          Container(
                            child: Row(children: [Icon(Iconsax.card_edit)]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
