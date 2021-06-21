import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_repos/app/modules/home/repositories/home_repository.dart';

void main() {
  late HomeRepository repository;

  setUpAll(() {
    repository = HomeRepository();
  });
}
