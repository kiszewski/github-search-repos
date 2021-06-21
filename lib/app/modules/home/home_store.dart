import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:github_search_repos/app/models/repository_model.dart';
import 'package:mobx/mobx.dart';

import 'repositories/home_repository.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final HomeRepository _repository;

  HomeStoreBase(this._repository);

  @observable
  String username = '';
  @action
  setUsername(String value) => username = value;

  @observable
  String? errorText;
  @action
  _setErrorText(String? value) => errorText = value;

  Future searchUserRepositories() async {
    _setErrorText(null);

    final Response resp = await _repository.searchUserRepositories(username);

    if (resp.statusCode == 200) {
      final repos = resp.data as List;

      final List<RepositoryModel> repositoryList =
          repos.map((json) => RepositoryModel.fromJson(json)).toList();

      Modular.to.pushNamed('/user_repositories',
          arguments: {'repositories': repositoryList});
    } else {
      _setErrorText(resp.statusMessage ?? '');
    }
  }
}
