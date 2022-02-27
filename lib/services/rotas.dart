import 'package:flutter_sqlite_sqflite/paginas/pagina3/notes_page.dart';

import '/paginas/pagina2.dart';
import '/paginas/pagina1.dart';
import 'package:get/get.dart';
import '/menu.dart';

rotas() {
  return [
    GetPage(name: '/', page: () => const Menu()),
    GetPage(
        name: '/menu/', page: () => const Menu(), transition: Transition.zoom),
    GetPage(
        name: '/pagina1/',
        page: () => const Pagina1(),
        transition: Transition.zoom),
    GetPage(
        name: '/pagina2/',
        page: () => const Pagina2(),
        transition: Transition.zoom),
    GetPage(
        name: '/pagina3/',
        page: () => const Pagina3(),
        transition: Transition.zoom),
  ];
}
