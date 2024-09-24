import 'package:basic_landing_with_get/core/service/dio_service.dart';
import 'package:basic_landing_with_get/features/book_search/data/data_sources/book_remote_data_source.dart';
import 'package:basic_landing_with_get/features/book_search/data/repositories/book_repository_impl.dart';
import 'package:basic_landing_with_get/features/book_search/domain/repositories/book_repository.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    //========For F20========
    //First, we need to initialize the DioService
    Get.lazyPut<DioService>(() => DioService());
    //Then, we initialize the BookRemoteDataSource
    Get.lazyPut<BookRemoteDataSource>(
      () => BookRemoteDataSourceImpl(
        dioService: Get.find<DioService>(),
      ),
    );
    //Finally, we initialize the BookRepository
    Get.lazyPut<BookRepository>(
      () => BookRepositoryImpl(
        remoteDataSource: Get.find<BookRemoteDataSource>(),
      ),
    );
  }
  //==========F20 End================
}
