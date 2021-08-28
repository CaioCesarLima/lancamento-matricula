import 'package:get/get.dart';
import 'package:lancamento_de_matricla/app/models/participante_model.dart';
import 'package:lancamento_de_matricla/app/repository/participantes_repository.dart';

import 'dart:math';

class SorteioController extends GetxController {
  ParticipantesRespository respository = ParticipantesRespository();

SorteioController();
Participante participanteSorteado;
 bool isloading = false;
  
  

  getParticipantes()async {
    isloading = true;
    update();
    List<Participante> participantes= await respository.getParticipantes();
    Random random = new Random();
    int randomNumber = random.nextInt(participantes.length);
    participanteSorteado = participantes[randomNumber];
    await Future.delayed(Duration(seconds: 2));
    isloading = false;
    update();
  }

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}