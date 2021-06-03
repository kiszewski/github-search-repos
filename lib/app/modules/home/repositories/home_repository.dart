import 'package:dio/dio.dart';

class HomeRepository {
  final Dio _client;

  HomeRepository(this._client);

  Future searchUserRepositories(String username) async {
    try {
      final resp = await _client.get('/users/$username/repos');
      return resp;
    } catch (e) {
      if (e is DioError) {
        return e.response;
      }
    }
  }
}
