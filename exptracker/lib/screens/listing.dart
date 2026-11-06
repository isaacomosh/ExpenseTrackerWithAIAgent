import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListExpenses extends StatefulWidget {
  const ListExpenses({super.key});

  @override
  State<ListExpenses> createState() => _ListExpensesState();
}

class _ListExpensesState extends State<ListExpenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //create wallet
            Text(
              'Flights',
              style: GoogleFonts.nunito(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
