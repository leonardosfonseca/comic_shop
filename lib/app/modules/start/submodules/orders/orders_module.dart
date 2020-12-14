import 'orders_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'orders_page.dart';

class OrdersModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $OrdersController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => OrdersPage()),
      ];

  static Inject get to => Inject<OrdersModule>.of();
}
