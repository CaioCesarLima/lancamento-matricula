import 'package:get/get.dart';
import 'package:lancamento_de_matricla/app/models/participante_model.dart';
import 'package:lancamento_de_matricla/app/repository/participantes_repository.dart';

class HomeController extends GetxController {
  ParticipantesRespository respository = ParticipantesRespository();

HomeController();
  List<Participante> participantes = [];
  
  onInit(){
    getParticipantes();
  }

  getParticipantes()async {
    participantes = await respository.getParticipantes();
    update();
  }
  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}