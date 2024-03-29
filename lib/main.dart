import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticketbooking/screen/bottom_bar.dart';
import 'package:ticketbooking/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tickets",
      theme: ThemeData(primaryColor: primary),
      home: const BottomBar(),
    );
  }
}
