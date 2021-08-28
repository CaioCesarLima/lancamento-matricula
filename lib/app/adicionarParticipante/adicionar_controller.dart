import 'package:get/get.dart';

class AdicionarController extends GetxController {

AdicionarController();

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}