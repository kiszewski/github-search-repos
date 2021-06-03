import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hi_doc_app/app/modules/repository_webview/repositoryWebview_module.dart';
import 'package:hi_doc_app/app/modules/user_repositories/userRepositories_module.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => Dio(BaseOptions(baseUrl: 'https://api.github.com')))
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute('/user_repositories', module: UserRepositoriesModule()),
    ModuleRoute('/repository_webview', module: RepositoryWebviewModule()),
  ];
}
