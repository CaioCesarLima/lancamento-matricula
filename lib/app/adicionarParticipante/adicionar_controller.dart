import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lancamento_de_matricla/app/repository/participantes_repository.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

class AdicionarController extends GetxController {
  ParticipantesRespository repository = ParticipantesRespository();
AdicionarController();
  TextEditingController nome = TextEditingController();
  RxBool isloading = false.obs;
  cadastrar()async{
    isloading.value = true;
    update();
    ParseResponse response = await repository.cadastrar(nome.text);
    if(response.success){
      Get.snackbar('Sucesso', 'Participante cadastrado com sucesso');
      isloading.value = false;
    }else{
      Get.snackbar('Ops..', 'Ocorreu algum erro');
      isloading.value = false;
    }
    update();
  }
}