import 'package:book_store/core/utils/api_service.dart';
import 'package:book_store/core/utils/erorr/failure.dart';
import 'package:book_store/features/home/data/model/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetbooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebools&Sorting=newest &q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['item']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBook() {
    // TODO: implement fetchFeatureBook
    throw UnimplementedError();
  }
}
