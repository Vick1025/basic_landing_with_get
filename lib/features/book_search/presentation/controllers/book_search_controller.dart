import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:basic_landing_with_get/features/book_search/domain/entities/book_response_entity.dart';
import 'package:basic_landing_with_get/features/book_search/domain/repositories/book_repository.dart';
import 'package:basic_landing_with_get/features/book_search/domain/use_cases/search_books_use_case.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class BookSearchController extends GetxController {
  //This is the use case for searching books
  late final SearchBooksUseCase searchBooksUseCase;

  //F20
  var bookResponse = Rxn<BookResponseEntity>();

  /// All use case can be initialize here
  void initUseCase() {
    final repository = Get.find<BookRepository>();
    searchBooksUseCase = SearchBooksUseCase(repository);
  }

  ///If there's any variable need to be Initialize
  /// to make sure page F20 display correct, do it here
  initF20() {}

  ///Search books, and display error message if failed
  ///Send user input text as key word to API, and get response
  Future<void> searchBooks(String query) async {
    EasyLoading.show(status: 'loading'.tr);
    String errorMessage = '';

    final result = await searchBooksUseCase.execute(query);

    result.fold((failure) {
      errorMessage = failure;
      bookResponse.value = null;
      _showBasicDialog("error".tr, errorMessage);
    }, (success) {
      bookResponse.value = success;
    });

    EasyLoading.dismiss();
  }

  ///Use dialog to display some information
  _showBasicDialog(String title, String desc) {
    AwesomeDialog(
      context: Get.context!,
      dialogType: DialogType.noHeader,
      showCloseIcon: true,
      title: title,
      desc: desc,
      btnOkText: "ok".tr,
      btnOkOnPress: () {},
    ).show();
  }
}
