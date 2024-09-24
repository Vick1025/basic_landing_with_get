import 'package:flutter/material.dart';
import 'package:basic_landing_with_get/features/book_search/domain/entities/book_response_entity.dart';
import 'package:get/get.dart';

class BookResultDisplayCard extends StatelessWidget {
  final BookDocumentEntity book;

  const BookResultDisplayCard({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        title: Text(
          book.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(_formatAuthors(book.authorNames)),
            if (book.firstPublishYear != null)
              Text("${"first_publish_year".tr}: ${book.firstPublishYear}"),
          ],
        ),
      ),
    );
  }

  String _formatAuthors(List<String> authors) {
    if (authors.isEmpty) return "unknown_author".tr;
    if (authors.length <= 3) return authors.join(", ");
    return "${authors.take(3).join(", ")} ...";
  }
}
