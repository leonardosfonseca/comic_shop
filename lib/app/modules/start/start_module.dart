import 'package:comic_shop/app/modules/start/submodules/cart/cart_page.dart';
import 'package:comic_shop/app/modules/start/submodules/detail_product/detail_product_page.dart';

import 'start_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'start_page.dart';

class StartModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $StartController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => StartPage()),
        ModularRouter("/DetailProduct",
            child: (_, args) => DetailProductPage(comic: args.data)),
        ModularRouter("/Cart", child: (_, args) => CartPage())
      ];

  static Inject get to => Inject<StartModule>.of();
}
