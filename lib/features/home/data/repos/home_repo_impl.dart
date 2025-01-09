import 'package:book_store/core/utils/api_service.dart';
import 'package:book_store/core/utils/erorr/failure.dart';
import 'package:book_store/features/home/data/model/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

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
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDaioErorr(e));
      }

      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBook()   async {
      try {
        var data = await apiService.get(
            endPoint:
                'volumes?Filtering=free-ebools&q=subject:Programming');
        List<BookModel> books = [];
        for (var item in data['item']) {
          books.add(BookModel.fromJson(item));
        }
        return right(books);
      } catch (e) {
        if (e is DioException) {
          return left(ServerFailure.fromDaioErorr(e));
        }

        return left(
          ServerFailure(
            e.toString(),
          ),
        );
      }
    }
  }
 