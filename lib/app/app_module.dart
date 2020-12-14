import 'package:comic_shop/app/modules/start/repositories/comics_new_repository.dart';
import 'package:dio/dio.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:comic_shop/app/app_widget.dart';

import 'modules/start/start_module.dart';
import 'modules/start/submodules/cart/cart_controller.dart';
import 'modules/start/submodules/cart/components/cart_list/cart_list_controller.dart';
import 'modules/start/submodules/cart/components/cart_total/cart_total_controller.dart';
import 'modules/start/submodules/detail_product/detail_product_controller.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        Bind((i) => CartListController(i.get<CartController>())),
        Bind((i) => CartTotalController(i.get<CartController>())),
        Bind((i) => DetailProductController(i.get<CartController>())),
        Bind((i) => ComicsNewRepository(i.get())),
        Bind((i) => CartController()),
        Bind((i) => Dio()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: StartModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
