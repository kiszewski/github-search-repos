import 'package:flutter_modular/flutter_modular.dart';
import 'package:hi_doc_app/app/modules/repository_webview/repositoryWebview_page.dart';
import 'package:hi_doc_app/app/modules/repository_webview/repositoryWebview_store.dart';

class RepositoryWebviewModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RepositoryWebviewStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, args) =>
            RepositoryWebviewPage(repoUrl: args.data['repoUrl'])),
  ];
}
