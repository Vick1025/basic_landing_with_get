import 'package:fpdart/fpdart.dart';
import '../entities/book_response_entity.dart';

abstract class BookRepository {
  Future<Either<String, BookResponseEntity>> searchBooks(String query);
}
