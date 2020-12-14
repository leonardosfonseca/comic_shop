import 'package:comic_shop/app/modules/start/models/marvelAPI/comics_new.dart';
import 'package:comic_shop/app/util/helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

@Injectable()
class ComicsNewRepository extends Disposable {
  final Dio dio;
  final url = gerarUrl("comics",
      "format=comic&noVariants=true&startYear=2019&hasDigitalIssue=true&");

  ComicsNewRepository(this.dio);

  Future fetchComics() async {
    final response = await dio.get(url);
    return (response.data["data"]["results"] as List)
        .map((json) => ComicsNew.fromJson(json))
        .toList();
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
