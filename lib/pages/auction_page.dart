import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuctionPage extends StatefulWidget {
  const AuctionPage({super.key});
  @override
  State<AuctionPage> createState() => _AuctionPage();
}

class _AuctionPage extends State<AuctionPage> {
  int? price;
  int? incPrice = 0;
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        backgroundColor: Colors.red.shade300,
        
        title: const Text(
          'Auction-App',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Text(
                'Auction',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(children: [
                  InkWell(
                    onTap: () => {
                      print('$price'),
                      setState(() {
                        price = 50;
                        incPrice = price;
                      }),
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.red.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        '\$50',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () => {
                      print('$price'),
                      setState(() {
                        price = 100;
                        incPrice = price;
                      }),
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.red.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        '\$100',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Default Bid Price $price',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => {
                     
                      setState(() {
                       if (incPrice! <= 2000) {
                          incPrice = incPrice! + 200;
                        } else {
                          incPrice = incPrice! + 500;
                        }
                      }),
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.red.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Fakhruddin',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () => {
                      setState(() {
                       if (incPrice! <= 2000) {
                          incPrice = incPrice! + 200;
                        } else {
                          incPrice = incPrice! + 500;
                        }
                      }),
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.red.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Burhan',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => {
                      setState(() {
                        if (incPrice! <= 2000) {
                          incPrice = incPrice! + 200;
                        } else {
                          incPrice = incPrice! + 500;
                        }
                      }),
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.red.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Mohammad',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () => {
                     
                      setState(() {
                        if (incPrice! <= 2000) {
                          incPrice = incPrice! + 200;
                        } else {
                          incPrice = incPrice! + 500;
                        }
                      }),
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.red.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Mutufa',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => {
                setState(() {
                  price = 0;
                  incPrice = 0;
                }),
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Reset',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Bid Price $incPrice',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )),
      ),
      drawer: Drawer(
        backgroundColor: Colors.red.shade300,
        child: ListView(
          children: [
            Center(
              child: Text(
                'Menu',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text(
                'Link 1',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.gothicA1().fontFamily),
              ),
              onTap: () => {},
            ),
            ListTile(
              title: Text(
                'Link 2',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.gothicA1().fontFamily),
              ),
              onTap: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
