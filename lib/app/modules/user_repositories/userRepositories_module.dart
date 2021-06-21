import 'package:flutter_modular/flutter_modular.dart';
import 'package:github_search_repos/app/modules/user_repositories/userRepositories_page.dart';

class UserRepositoriesModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, args) =>
            UserRepositoriesPage(repositories: args.data['repositories'])),
  ];
}
