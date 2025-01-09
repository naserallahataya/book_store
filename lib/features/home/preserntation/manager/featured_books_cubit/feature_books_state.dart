part of 'feature_books_cubit.dart';

sealed class FeatureBooksState extends Equatable {
  const FeatureBooksState();

  @override
  List<Object> get props => [];
}

final class FeatureBooksInitial extends FeatureBooksState {}

class FeatureBookLoading extends FeatureBooksState {}

class FeatureBookFealure extends FeatureBooksState {
  final String errMessage;

  const FeatureBookFealure(this.errMessage);
}

class FeatureBookSuccess extends FeatureBooksState {
  final List<BookModel> books;

  const FeatureBookSuccess(this.books);
}
