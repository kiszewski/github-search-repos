import 'package:dio/dio.dart';
import 'package:github_search_repos/app/models/repository_model.dart';

class HomeRepository {
  final Dio _client;

  HomeRepository(this._client);

  Future<List<RepositoryModel>> searchUserRepositories(String username) async {
    final resp = await _client.get('/users/$username/repos');
    if (resp.statusCode == 200) {
      final repos = resp.data as List;

      return repos.map((json) => RepositoryModel.fromJson(json)).toList();
    } else
      throw Exception('Error user not found');
  }
}
