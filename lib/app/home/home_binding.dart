import 'package:get/get.dart';
import 'package:lancamento_de_matricla/app/home/home_controller.dart';

class HomeBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<HomeController>(() => HomeController());
  }
}