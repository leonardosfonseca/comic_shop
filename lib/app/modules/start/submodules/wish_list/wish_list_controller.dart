import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'wish_list_controller.g.dart';

@Injectable()
class WishListController = _WishListControllerBase with _$WishListController;

abstract class _WishListControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
