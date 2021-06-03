import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hi_doc_app/app/models/repository_model.dart';
import 'package:hi_doc_app/app/modules/user_repositories/components/user_header_widget.dart';
import 'package:hi_doc_app/app/modules/user_repositories/userRepositories_store.dart';

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
  final UserRepositoriesStore store = Modular.get();

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
