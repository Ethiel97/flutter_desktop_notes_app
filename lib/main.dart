import 'package:flutter/material.dart';
import 'package:flutter_desktop_notes/providers/app_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'pages/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final controller = Get.put(AppController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Windows',
        theme: ThemeData(
          textTheme: GoogleFonts.nunitoSansTextTheme(
            Theme.of(context).textTheme,
          ),
          fontFamily: GoogleFonts.nunitoSans().fontFamily,
          primarySwatch: Colors.blue,
          backgroundColor: backgroundColor,
        ),
        home: const SafeArea(
          child: Dashboard(),
        ),
        debugShowCheckedModeBanner: false,
      );
}
