import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Wallets extends StatefulWidget {
  const Wallets({super.key});

  @override
  State<Wallets> createState() => _WalletsState();
}

class _WalletsState extends State<Wallets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Column(
            children: [
              SizedBox(height: 10),
              //top text
              Row(
                children: [
                  Text(
                    'Wallets',
                    style: GoogleFonts.nunito(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                  Icon(Icons.money, color: Colors.green, size: 35),
                ],
              ),

              SizedBox(height: 10),
              Container(
                width: 390,
                height: 210,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Top Credit Wallets',
                            style: GoogleFonts.nunito(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'MemeCoins',
                            style: GoogleFonts.nunito(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.wallet, color: Colors.green, size: 45),
                          Row(
                            children: [
                              Text(
                                '\$',
                                style: GoogleFonts.nunito(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 45,
                                ),
                              ),
                              Text(
                                '\$',
                                style: GoogleFonts.nunito(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 45,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        'MemeCoin Balance:',
                        style: GoogleFonts.nunito(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        '\$ 30,599',
                        style: GoogleFonts.nunito(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        'All rights reserved Central Bank Legal Tender',
                        style: GoogleFonts.nunito(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 183, 181, 181),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      '\$',
                      style: GoogleFonts.nunito(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                  ),
                ),
                title: Text(
                  'WireTrasnfer: Meme coins FOMO',
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Summer Vacation',
                  style: GoogleFonts.nunito(color: Colors.black, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
