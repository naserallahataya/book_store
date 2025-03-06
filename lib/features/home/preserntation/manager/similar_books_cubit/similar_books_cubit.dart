import 'package:bloc/bloc.dart';
import 'package:book_store/features/home/data/model/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRpo) : super(SimilarBooksInitial());
  final HomeRepo homeRpo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRpo.fetchSimilarBooks(category: category);

    result.fold((failure) {
      emit(SimilarBooksFailure(failure.erroMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
