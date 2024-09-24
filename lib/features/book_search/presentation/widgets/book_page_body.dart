import 'package:basic_landing_with_get/features/book_search/presentation/controllers/book_search_controller.dart';
import 'package:basic_landing_with_get/features/book_search/presentation/widgets/book_result_display_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookSearchPageBody extends GetView<BookSearchController> {
  const BookSearchPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchQuery = TextEditingController();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchQuery,
              decoration: InputDecoration(
                hintText: 'book_name'.tr,
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    controller.searchBooks(searchQuery.text);
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Obx(() {
              final books = controller.bookResponse.value?.docs ?? [];
              if (books.isEmpty) {
                return Center(child: Text("no_book_found".tr));
              }
              return ListView.builder(
                itemCount: books.length,
                itemBuilder: (context, index) {
                  return BookResultDisplayCard(book: books[index]);
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
