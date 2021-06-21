import 'package:flutter_modular/flutter_modular.dart';
import 'package:github_search_repos/app/modules/user_repositories/userRepositories_page.dart';
import 'package:github_search_repos/app/modules/user_repositories/userRepositories_store.dart';

class UserRepositoriesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => UserRepositoriesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, args) =>
            UserRepositoriesPage(repositories: args.data['repositories'])),
  ];
}
