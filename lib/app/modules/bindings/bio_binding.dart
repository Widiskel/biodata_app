import 'package:get/get.dart';
import 'package:tugas1/app/modules/controllers/bio_controller.dart';

class BioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BioController>(
      () => BioController(),
    );
  }
}
