import 'package:book_store/core/utils/app_router.dart';
import 'package:book_store/core/utils/widgets/custom_error.dart';
import 'package:book_store/features/home/preserntation/manager/featured_books_cubit/feature_books_cubit.dart';
import 'package:book_store/features/home/preserntation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeatureBooksListItem extends StatelessWidget {
  const FeatureBooksListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, indext) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kBookDetailsView,
                            extra: state.books[indext]);
                      },
                      child: CustomBookImage(
                        imageUrl:
                            state.books[indext].volumeInfo.imageLinks.thumbnail,
                      ),
                    ),
                  );
                }),
          );
        } else if (state is FeatureBookFealure) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
