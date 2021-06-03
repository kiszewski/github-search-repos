import 'package:flutter_modular/flutter_modular.dart';
import 'package:hi_doc_app/app/modules/home/repositories/home_repository.dart';

import '../home/home_store.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeRepository(i.get())),
    Bind.lazySingleton((i) => HomeStore(i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
  ];
}
