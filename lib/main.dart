import 'package:book_store/features/presentaion/views/splash__view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BookApp());
}

 class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      home:  SplashView(),
    );
  }
}