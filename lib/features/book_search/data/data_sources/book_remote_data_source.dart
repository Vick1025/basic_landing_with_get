import 'package:basic_landing_with_get/core/service/dio_service.dart';
import 'package:fpdart/fpdart.dart';
import '../models/book_response_model.dart';

abstract class BookRemoteDataSource {
  Future<Either<String, BookResponseModel>> searchBooks(String query);
}

class BookRemoteDataSourceImpl implements BookRemoteDataSource {
  final DioService dioService;

  BookRemoteDataSourceImpl({required this.dioService});

  @override
  Future<Either<String, BookResponseModel>> searchBooks(String query) async {
    final dio = DioService.getDio();
    try {
      final response =
          await dio.get('/search.json', queryParameters: {'q': query});

      if (response.statusCode == 200) {
        return Right(BookResponseModel.fromJson(response.data));
      } else {
        return Left('Failed to load books: ${response.statusCode}');
      }
    } catch (e) {
      return Left('Error occurred: $e');
    }
  }
}
