import 'package:basic_landing_with_get/features/book_search/domain/repositories/book_repository.dart';
import 'package:fpdart/fpdart.dart';
import '../../domain/entities/book_response_entity.dart';
import '../data_sources/book_remote_data_source.dart';

class BookRepositoryImpl implements BookRepository {
  final BookRemoteDataSource remoteDataSource;

  BookRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<String, BookResponseEntity>> searchBooks(String query) async {
    final result = await remoteDataSource.searchBooks(query);
    return result.map((bookResponseModel) => bookResponseModel.toEntity());
  }
}
