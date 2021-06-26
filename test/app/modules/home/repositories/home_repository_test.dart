import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_repos/app/core/constants.dart';
import 'package:github_search_repos/app/modules/home/repositories/home_repository.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mockito/mockito.dart';

import 'success_response_mock.dart';

class ClientMock extends Mock implements Dio {}

void main() {
  test('Success get repositories', () async {
    final dio = Dio(BaseOptions(baseUrl: BASE_URL));
    final dioAdapter = DioAdapter();
    dio.httpClientAdapter = dioAdapter;

    const username = 'kiszewski';
    const path = '/users/$username/repos';

    dioAdapter.onGet(path, (request) => request.reply(200, responseMock));

    final repository = HomeRepository(dio);

    final result = await repository.searchUserRepositories(username);
    expect(result.first.id, 262687420);
  });
}
