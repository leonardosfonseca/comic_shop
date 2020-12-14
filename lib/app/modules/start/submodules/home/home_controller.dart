import 'package:comic_shop/app/modules/start/repositories/comics_new_repository.dart';
import 'package:comic_shop/app/modules/start/submodules/home/home_status.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final ComicsNewRepository repository;

  _HomeControllerBase(this.repository) {
    fetchComics();
  }

  @observable
  HomeStatus status = HomeStatus.none;
  @action
  Future<void> fetchComics() async {
    status = HomeStatus.loading;
    try {
      final response = await repository.fetchComics();
      status = HomeStatus.success..value = response;
    } catch (e) {
      status = HomeStatus.error..value = e;
    }
  }
}
