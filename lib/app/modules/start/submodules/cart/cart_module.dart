import 'cart_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'cart_page.dart';
import 'components/cart_list/cart_list_controller.dart';
import 'components/cart_total/cart_total_controller.dart';

class CartModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CartListController(i.get<CartController>())),
        Bind((i) => CartTotalController(i.get<CartController>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => CartPage()),
      ];

  static Inject get to => Inject<CartModule>.of();
}
