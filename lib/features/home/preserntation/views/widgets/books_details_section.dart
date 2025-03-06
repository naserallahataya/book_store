import 'package:book_store/core/utils/style.dart';
import 'package:book_store/features/home/data/model/book_model/book_model.dart';
import 'package:book_store/features/home/preserntation/views/widgets/book_action.dart';
import 'package:book_store/features/home/preserntation/views/widgets/book_rating.dart';
import 'package:book_store/features/home/preserntation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? '',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        BookRating(
          count: bookModel.volumeInfo.ratingsCount ?? 0,
          rating: bookModel.volumeInfo.averageRating ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        BookAction(bookModel: bookModel,),
      ],
    );
  }
}
