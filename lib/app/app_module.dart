import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:github_search_repos/app/modules/repository_webview/repositoryWebview_module.dart';
import 'package:github_search_repos/app/modules/user_repositories/userRepositories_module.dart';

import 'core/constants.dart';
import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => Dio(BaseOptions(baseUrl: BASE_URL)))
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute('/user_repositories', module: UserRepositoriesModule()),
    ModuleRoute('/repository_webview', module: RepositoryWebviewModule()),
  ];
}
