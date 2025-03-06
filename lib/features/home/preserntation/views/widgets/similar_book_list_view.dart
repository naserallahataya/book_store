import 'package:book_store/core/utils/widgets/custom_error.dart';
import 'package:book_store/core/utils/widgets/custom_loading_indicator.dart';
import 'package:book_store/features/home/preserntation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_store/features/home/preserntation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, indext) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CustomBookImage(
                        imageUrl: state.books[indext].volumeInfo.imageLinks
                                .thumbnail ),
                  );
                }),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
