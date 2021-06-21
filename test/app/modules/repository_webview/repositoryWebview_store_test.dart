import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_repos/app/modules/repository_webview/repositoryWebview_store.dart';

void main() {
  late RepositoryWebviewStore store;

  setUpAll(() {
    store = RepositoryWebviewStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
