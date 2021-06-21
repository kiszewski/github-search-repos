import 'package:flutter/material.dart';
import 'package:github_search_repos/app/models/owner_model.dart';

class UserHeaderWidget extends StatelessWidget {
  final Owner user;
  const UserHeaderWidget({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              clipBehavior: Clip.antiAlias,
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(user.avatarUrl),
            ),
          ),
          Column(
            children: [
              Text(
                user.login,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
