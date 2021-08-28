import 'package:lancamento_de_matricla/app/models/participante_model.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

class ParticipantesRespository{
  Future<ParseResponse> cadastrar(String nome) async{
    ParseObject participante = ParseObject('Participantes');
    participante.set('nome', nome);

    ParseResponse response = await participante.save();

    return response;
  }

  Future<List<Participante>> getParticipantes() async{
    ParseResponse response = await ParseObject('Participantes').getAll();
    if(response.success){
      return response.results.map((e) => Participante(e['nome'])).toList();
    }
  }
}