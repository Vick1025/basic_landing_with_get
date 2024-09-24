import 'package:basic_landing_with_get/constants/field_name.dart';
import 'package:basic_landing_with_get/features/book_search/domain/entities/book_response_entity.dart';

class BookResponseModel extends BookResponseEntity {
  const BookResponseModel({
    required super.start,
    required super.numFound,
    required super.docs,
  });

  factory BookResponseModel.fromJson(Map<String, dynamic> json) {
    return BookResponseModel(
      start: json[kStart] as int,
      numFound: json[kNumFound] as int,
      docs: (json[kDocs] as List<dynamic>)
          .map((doc) => BookDocumentModel.fromJson(doc as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      kStart: start,
      kNumFound: numFound,
      kDocs: docs.map((doc) => (doc as BookDocumentModel).toJson()).toList(),
    };
  }

  BookResponseEntity toEntity() {
    return BookResponseEntity(
      start: start,
      numFound: numFound,
      docs: docs.map((doc) => (doc as BookDocumentModel).toEntity()).toList(),
    );
  }
}

class BookDocumentModel extends BookDocumentEntity {
  const BookDocumentModel({
    super.coverId,
    required super.hasFulltext,
    required super.editionCount,
    required super.title,
    required super.authorNames,
    super.firstPublishYear,
    required super.key,
    required super.ia,
    required super.authorKeys,
    required super.publicScanB,
  });

  factory BookDocumentModel.fromJson(Map<String, dynamic> json) {
    return BookDocumentModel(
      coverId: json[kCoverId] as int?,
      hasFulltext: json[kHasFulltext] as bool,
      editionCount: json[kEditionCount] as int,
      title: json[kTitle] as String,
      authorNames: List<String>.from(json[kAuthorName] ?? []),
      firstPublishYear: json[kFirstPublishYear] as int?,
      key: json[kKey] as String,
      ia: List<String>.from(json[kIa] ?? []),
      authorKeys: List<String>.from(json[kAuthorKey] ?? []),
      publicScanB: json[kPublicScanB] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      kCoverId: coverId,
      kHasFulltext: hasFulltext,
      kEditionCount: editionCount,
      kTitle: title,
      kAuthorName: authorNames,
      kFirstPublishYear: firstPublishYear,
      kKey: key,
      kIa: ia,
      kAuthorKey: authorKeys,
      kPublicScanB: publicScanB,
    };
  }

  BookDocumentEntity toEntity() {
    return BookDocumentEntity(
      coverId: coverId,
      hasFulltext: hasFulltext,
      editionCount: editionCount,
      title: title,
      authorNames: authorNames,
      firstPublishYear: firstPublishYear,
      key: key,
      ia: ia,
      authorKeys: authorKeys,
      publicScanB: publicScanB,
    );
  }
}
