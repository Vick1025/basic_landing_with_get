import 'package:fpdart/fpdart.dart';
import '../entities/book_response_entity.dart';
import '../repositories/book_repository.dart';

class SearchBooksUseCase {
  final BookRepository repository;

  SearchBooksUseCase(this.repository);

  Future<Either<String, BookResponseEntity>> execute(String query) async {
    return await repository.searchBooks(query);
  }
}
