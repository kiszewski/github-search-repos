import 'package:mobx/mobx.dart';

part 'userRepositories_store.g.dart';

class UserRepositoriesStore = _UserRepositoriesStoreBase with _$UserRepositoriesStore;
abstract class _UserRepositoriesStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}