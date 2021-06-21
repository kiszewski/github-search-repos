import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:github_search_repos/app/models/repository_model.dart';

class RepositoryTileWidget extends StatelessWidget {
  final RepositoryModel repositoryModel;
  const RepositoryTileWidget({Key? key, required this.repositoryModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        repositoryModel.name,
        style: Theme.of(context).textTheme.headline1,
      ),
      subtitle: Text(
        repositoryModel.description,
        style: Theme.of(context).textTheme.headline2,
      ),
      onTap: () {
        Modular.to.pushNamed('/repository_webview',
            arguments: {'repoUrl': repositoryModel.htmlUrl});
      },
    );
  }
}
