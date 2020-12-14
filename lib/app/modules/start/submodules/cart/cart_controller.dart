import 'package:comic_shop/app/modules/start/models/cart_model.dart';
import 'package:comic_shop/app/modules/start/models/marvelAPI/comics_new.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'cart_controller.g.dart';

@Injectable()
class CartController = _CartControllerBase with _$CartController;

abstract class _CartControllerBase with Store {
  final productsInCart = ObservableList<CartModel>();

  void addProductToCart(ComicsNew comic) {
    var index = productsInCart
        .indexWhere((cartModel) => cartModel.comic.id == comic.id);

    if (index >= 0) {
      productsInCart.elementAt(index).addQuantity();
    } else {
      productsInCart.add((CartModel(comic)));
    }
  }

  @computed
  double get total => productsInCart
      .map((item) =>
          double.parse(item.comic.prices.first.price) * item.quantidade)
      .reduce((value, element) => value + element);
}
