import 'package:flutter_modular/flutter_modular.dart';
import 'package:github_search_repos/app/modules/repository_webview/repositoryWebview_page.dart';

class RepositoryWebviewModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, args) =>
            RepositoryWebviewPage(repoUrl: args.data['repoUrl'])),
  ];
}
