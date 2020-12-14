import 'package:comic_shop/app/modules/start/models/cart_model.dart';
import 'package:comic_shop/app/modules/start/submodules/cart/cart_controller.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'cart_list_controller.g.dart';

@Injectable()
class CartListController = _CartListControllerBase with _$CartListController;

abstract class _CartListControllerBase with Store {
  final CartController _cartController;

  _CartListControllerBase(this._cartController);

  @computed
  ObservableList<CartModel> get listProducts => _cartController.productsInCart;
}
