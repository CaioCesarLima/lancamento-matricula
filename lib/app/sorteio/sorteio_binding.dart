import 'package:get/get.dart';

import 'sorteio_controller.dart';

class SorteioBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<SorteioController>(() => SorteioController());
  }
}