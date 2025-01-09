import 'package:bloc/bloc.dart';
import 'package:book_store/features/home/data/model/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRpo) : super(FeatureBooksInitial());

  final HomeRepo homeRpo;

  Future<void> fetchFeatuerdBooks() async {
    emit(FeatureBookLoading());
    var result = await homeRpo.fetchFeatureBook();

    result.fold((failure) {
      emit(FeatureBookFealure(failure.erroMessage));
    }, (books) {
      emit(FeatureBookSuccess(books));
    });
  }
}
