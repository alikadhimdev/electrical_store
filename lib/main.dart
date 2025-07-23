import 'package:electrical_store/constants.dart';
import 'package:electrical_store/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electrical Store',
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
      ),

      locale: const Locale('ar'), // تعيين اللغة الافتراضية إلى العربية
      supportedLocales: const [
        Locale('ar', ''), // دعم العربية
        Locale('en', ''), // دعم الإنجليزية أيضاً إن أردت
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      home: HomeScreen(),
    );
  }
}
