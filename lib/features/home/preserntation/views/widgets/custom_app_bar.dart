import 'package:book_store/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 10),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 20,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}
