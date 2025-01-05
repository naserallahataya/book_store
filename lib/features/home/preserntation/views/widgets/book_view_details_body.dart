import 'package:book_store/features/home/preserntation/views/widgets/books_details_section.dart';
import 'package:book_store/features/home/preserntation/views/widgets/custom_details_app_bar.dart';
import 'package:book_store/features/home/preserntation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookViewDetailsBody extends StatelessWidget {
  const BookViewDetailsBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                const SizedBox(
                  height: 40,
                ),
                SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
