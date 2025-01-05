import 'package:book_store/core/utils/style.dart';
import 'package:book_store/features/home/preserntation/views/widgets/book_action.dart';
import 'package:book_store/features/home/preserntation/views/widgets/book_rating.dart';
import 'package:book_store/features/home/preserntation/views/widgets/custom_details_app_bar.dart';
import 'package:book_store/features/home/preserntation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookViewDetailsBody extends StatelessWidget {
  const BookViewDetailsBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Wrutten in the Stars',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
          BookAction()
        ],
      ),
    );
  }
}
