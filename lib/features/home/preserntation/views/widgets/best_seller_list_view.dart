import 'package:book_store/core/utils/widgets/custom_error.dart';
import 'package:book_store/core/utils/widgets/custom_loading_indicator.dart';
import 'package:book_store/features/home/preserntation/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:book_store/features/home/preserntation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
         if (state is NewsetBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewsetBooksFailure) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return const  CustomLoadingIndicator();
        }
      },
    );
  }
}
