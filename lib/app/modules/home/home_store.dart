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

  @observable
  List<RepositoryModel> repositories = [];
  @action
  _setRepositories(List<RepositoryModel> value) => repositories = value;

  Future<bool> searchUserRepositories() async {
    _setErrorText(null);

    try {
      final result = await _repository.searchUserRepositories(username);
      _setRepositories(result);
      return repositories.isNotEmpty;
    } on DioError catch (e) {
      _setErrorText(e.message);
      return false;
    }
  }
}
