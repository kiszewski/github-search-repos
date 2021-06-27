// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  final _$usernameAtom = Atom(name: 'HomeStoreBase.username');

  @override
  String get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  final _$errorTextAtom = Atom(name: 'HomeStoreBase.errorText');

  @override
  String? get errorText {
    _$errorTextAtom.reportRead();
    return super.errorText;
  }

  @override
  set errorText(String? value) {
    _$errorTextAtom.reportWrite(value, super.errorText, () {
      super.errorText = value;
    });
  }

  final _$repositoriesAtom = Atom(name: 'HomeStoreBase.repositories');

  @override
  List<RepositoryModel> get repositories {
    _$repositoriesAtom.reportRead();
    return super.repositories;
  }

  @override
  set repositories(List<RepositoryModel> value) {
    _$repositoriesAtom.reportWrite(value, super.repositories, () {
      super.repositories = value;
    });
  }

  final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase');

  @override
  dynamic setUsername(String value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setUsername');
    try {
      return super.setUsername(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic _setErrorText(String? value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase._setErrorText');
    try {
      return super._setErrorText(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic _setRepositories(List<RepositoryModel> value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase._setRepositories');
    try {
      return super._setRepositories(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
username: ${username},
errorText: ${errorText},
repositories: ${repositories}
    ''';
  }
}
