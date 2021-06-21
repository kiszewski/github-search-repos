import 'package:flutter/material.dart';
import 'package:github_search_repos/app/models/repository_model.dart';
import 'package:github_search_repos/app/modules/user_repositories/components/user_header_widget.dart';

import 'components/repository_tile_widget.dart';

class UserRepositoriesPage extends StatefulWidget {
  final List<RepositoryModel> repositories;
  const UserRepositoriesPage({
    Key? key,
    required this.repositories,
  }) : super(key: key);
  @override
  UserRepositoriesPageState createState() => UserRepositoriesPageState();
}

class UserRepositoriesPageState extends State<UserRepositoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            UserHeaderWidget(user: widget.repositories[0].owner),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                controller: ScrollController(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => Divider(
                  thickness: 2,
                  endIndent: 10,
                  indent: 10,
                ),
                itemBuilder: (context, index) => RepositoryTileWidget(
                    repositoryModel: widget.repositories[index]),
                itemCount: widget.repositories.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
