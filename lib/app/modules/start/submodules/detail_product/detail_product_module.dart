import 'package:comic_shop/app/modules/start/submodules/cart/cart_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'detail_product_controller.dart';
import 'detail_product_page.dart';

class DetailProductModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DetailProductController(i.get<CartController>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => DetailProductPage()),
      ];

  static Inject get to => Inject<DetailProductModule>.of();
}
