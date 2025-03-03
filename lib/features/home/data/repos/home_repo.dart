import 'package:book_store/core/utils/erorr/failure.dart';
import 'package:book_store/features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetbooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
