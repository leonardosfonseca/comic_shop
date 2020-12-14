import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'orders_controller.g.dart';

@Injectable()
class OrdersController = _OrdersControllerBase with _$OrdersController;

abstract class _OrdersControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
