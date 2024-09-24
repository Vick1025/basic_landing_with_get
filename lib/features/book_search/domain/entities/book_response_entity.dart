import 'package:flutter/foundation.dart';

@immutable
class BookResponseEntity {
  final int start;
  final int numFound;
  final List<BookDocumentEntity> docs;

  const BookResponseEntity({
    required this.start,
    required this.numFound,
    required this.docs,
  });
}

@immutable
class BookDocumentEntity {
  final int? coverId;
  final bool hasFulltext;
  final int editionCount;
  final String title;
  final List<String> authorNames;
  final int? firstPublishYear;
  final String key;
  final List<String> ia;
  final List<String> authorKeys;
  final bool publicScanB;

  const BookDocumentEntity({
    this.coverId,
    required this.hasFulltext,
    required this.editionCount,
    required this.title,
    required this.authorNames,
    this.firstPublishYear,
    required this.key,
    required this.ia,
    required this.authorKeys,
    required this.publicScanB,
  });
}
