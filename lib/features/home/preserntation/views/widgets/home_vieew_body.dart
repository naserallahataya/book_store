import 'package:book_store/core/utils/style.dart';
import 'package:book_store/features/home/preserntation/views/widgets/best_seller_list_view.dart';
import 'package:book_store/features/home/preserntation/views/widgets/custom_app_bar.dart';
import 'package:book_store/features/home/preserntation/views/widgets/feature_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: CustomAppBar(),
              ),
              FeatureBooksListItem(),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
