import 'package:comic_shop/app/modules/start/repositories/comics_new_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final dio = Dio();
  final repository = ComicsNewRepository(dio);

  test('Deve trazer uma lista de ComicsModel no', () async {
    final list = await repository.fetchComics();
    expect(list[0].id, 54913);
  });
}
