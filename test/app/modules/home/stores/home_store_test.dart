import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_repos/app/models/owner_model.dart';
import 'package:github_search_repos/app/models/repository_model.dart';
import 'package:github_search_repos/app/modules/home/home_store.dart';
import 'package:github_search_repos/app/modules/home/repositories/home_repository.dart';
import 'package:mocktail/mocktail.dart';

class HomeRepositoryMock extends Mock implements HomeRepository {}

main() {
  late final HomeRepositoryMock repository;
  setUpAll(() {
    repository = HomeRepositoryMock();
  });

  test('Success search for repositories', () async {
    when(() => repository.searchUserRepositories('kiszewski'))
        .thenAnswer((_) async => [
              RepositoryModel(
                  id: 123,
                  nodeId: '123456',
                  name: 'leo',
                  fullName: 'kiszewski',
                  private: false,
                  owner: Owner(
                      id: 1,
                      avatarUrl: '',
                      login: '',
                      siteAdmin: false,
                      nodeId: '',
                      type: '',
                      url: ''),
                  htmlUrl: 'htmlUrl',
                  description: 'description',
                  fork: false,
                  url: 'url')
            ]);

    final store = HomeStore(repository);
    store.setUsername('kiszewski');
    await store.searchUserRepositories();
    expect(store.errorText, null);
    expect(store.repositories.length, 1);
  });
}
