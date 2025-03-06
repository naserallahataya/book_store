import 'package:bloc/bloc.dart';
import 'package:book_store/features/home/data/model/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRpo) : super(NewsetBooksInitial());

  final HomeRepo homeRpo;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRpo.fetchNewsetbooks();

    result.fold((failure) {
      emit(NewsetBooksFailure(failure.erroMessage));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });
  }
}
