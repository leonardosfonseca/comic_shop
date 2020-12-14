import 'package:comic_shop/app/modules/start/submodules/cart/cart_controller.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'cart_total_controller.g.dart';

@Injectable()
class CartTotalController = _CartTotalControllerBase with _$CartTotalController;

abstract class _CartTotalControllerBase with Store {
  final CartController _cartController;

  _CartTotalControllerBase(this._cartController);

  @computed
  double get total => _cartController.total;
}
