import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'products_controller.g.dart';

@Injectable()
class ProductsController = _ProductsControllerBase with _$ProductsController;

abstract class _ProductsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
