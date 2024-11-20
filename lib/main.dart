import 'package:flutter/material.dart';
import './pages/auction_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localization/flutter_localization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        locale: Locale('fr', 'CH'),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: ThemeData(
          fontFamily: GoogleFonts.abel().fontFamily,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red.shade300),
        ),
        darkTheme: ThemeData(brightness: Brightness.dark),
        initialRoute: '/',
        routes: {
          '/': (context) => AuctionPage(),
        });
  }
}
