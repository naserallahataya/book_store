import 'package:book_store/features/home/preserntation/views/widgets/custom_app_bar.dart';
import 'package:book_store/features/home/preserntation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        FeatureBooksListItem(),
      ],
    );
  }
}

class FeatureBooksListItem extends StatelessWidget {
  const FeatureBooksListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, indext) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: FeaturedListViewItem(),
            );
          }),
    );
  }
}