import 'package:book_store/core/utils/style.dart';
import 'package:book_store/features/home/preserntation/views/widgets/custom_app_bar.dart';
import 'package:book_store/features/home/preserntation/views/widgets/custom_list_view_item.dart';
import 'package:book_store/features/home/preserntation/views/widgets/feature_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureBooksListItem(),
          SizedBox(
            height: 24,
          ),
          Text(
            'Best Seller',
            style: Styles.titleMedium,
          )
        ],
      ),
    );
  }
}
