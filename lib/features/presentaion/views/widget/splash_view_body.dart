import 'package:book_store/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class SplashviewBody extends StatelessWidget {
  const SplashviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsData.logo),
      ],
    );
  }
}
