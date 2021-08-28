import 'package:get/get.dart';

import 'adicionar_controller.dart';

class AdicionarBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<AdicionarController>(() => AdicionarController());
  }
}