import 'package:get/get.dart';
import 'package:lancamento_de_matricla/app/adicionarParticipante/adicionar_binding.dart';
import 'package:lancamento_de_matricla/app/adicionarParticipante/adicionar_page.dart';
import 'package:lancamento_de_matricla/app/home/home_binding.dart';
import 'package:lancamento_de_matricla/app/home/home_page.dart';
import 'package:lancamento_de_matricla/app/sorteio/sorteio_binding.dart';
import 'package:lancamento_de_matricla/app/sorteio/sorteio_page.dart';
part './app_routes.dart';

abstract class AppPages {

  static final pages = [
    GetPage(name: Routes.HOME, page:()=> HomePage(), binding: HomeBinding()),
    GetPage(name: Routes.PARTICIPANTES, page:()=> HomePage(), binding: HomeBinding()),
    GetPage(name: Routes.CADASTRO, page:()=> AdicionarPage(), binding: AdicionarBinding()),
    GetPage(name: Routes.SORTEIO, page:()=> SorteioPage(), binding: SorteioBinding()),
  ];
}