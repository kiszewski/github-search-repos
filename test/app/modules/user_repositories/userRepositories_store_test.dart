import 'package:flutter_test/flutter_test.dart';
import 'package:hi_doc_app/app/modules/user_repositories/userRepositories_store.dart';
 
void main() {
  late UserRepositoriesStore store;

  setUpAll(() {
    store = UserRepositoriesStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}