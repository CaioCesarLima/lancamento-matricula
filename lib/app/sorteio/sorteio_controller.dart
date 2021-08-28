import 'package:get/get.dart';

class SorteioController extends GetxController {

SorteioController();

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}