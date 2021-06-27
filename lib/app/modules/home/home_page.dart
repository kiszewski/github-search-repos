import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:github_search_repos/app/modules/home/components/search_button_widget.dart';
import 'package:github_search_repos/app/modules/home/home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({this.title = "Home"});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: _height,
        width: _width,
        child: Stack(
          children: [
            Positioned(
                left: -20,
                top: -20,
                child: Transform.rotate(
                  angle: 40,
                  child: Image.asset(
                    './assets/logo.png',
                    width: 150,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Observer(
                  builder: (context) => TextField(
                    decoration: InputDecoration(
                      helperText: 'Github Username',
                      errorText: controller.errorText,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Theme.of(context).accentColor, width: 2),
                      ),
                    ),
                    onChanged: store.setUsername,
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 10,
                left: 30,
                right: 30,
                child: SearchButtonWidget(
                  onTap: () async {
                    if (await store.searchUserRepositories()) {
                      Modular.to.pushNamed(
                        '/user_repositories',
                        arguments: {'repositories': store.repositories},
                      );
                    }
                  },
                  text: 'Search Repositories',
                ))
          ],
        ),
      ),
    );
  }
}
