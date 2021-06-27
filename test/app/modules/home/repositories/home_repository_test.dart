import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_repos/app/core/constants.dart';
import 'package:github_search_repos/app/modules/home/repositories/home_repository.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mockito/mockito.dart';

import 'success_response_mock.dart';

class ClientMock extends Mock implements Dio {}

void main() {
  late final Dio client;
  late final DioAdapter dioAdapter;

  setUpAll(() {
    client = Dio(BaseOptions(baseUrl: BASE_URL));
    dioAdapter = DioAdapter();
    client.httpClientAdapter = dioAdapter;
  });

  test('Success get github repositories', () async {
    const username = 'kiszewski';
    const path = '/users/$username/repos';

    dioAdapter.onGet(path, (request) => request.reply(200, responseMock));

    final repository = HomeRepository(client);

    final result = await repository.searchUserRepositories(username);
    expect(result.first.id, 262687420);
    expect(result.length, 16);
  });
  test('Success search a username that not exist', () async {
    const username = 'kiszewskitestkiszewski';
    const path = '/users/$username/repos';

    dioAdapter.onGet(
        path,
        (request) => request.reply(
            404,
            () =>
                throw (DioError(requestOptions: RequestOptions(path: path)))));

    final repository = HomeRepository(client);

    try {
      await repository.searchUserRepositories(username);
    } catch (e) {
      expect(e, isA<DioError>());
    }
  });
}
