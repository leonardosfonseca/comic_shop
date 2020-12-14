import 'package:comic_shop/app/modules/start/submodules/cart/cart_controller.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'detail_product_controller.g.dart';

@Injectable()
class DetailProductController = _DetailProductControllerBase
    with _$DetailProductController;

abstract class _DetailProductControllerBase with Store {
  final CartController _cart;

  _DetailProductControllerBase(this._cart);

  void addProductToCart(comic) {
    _cart.addProductToCart(comic);
  }
}
