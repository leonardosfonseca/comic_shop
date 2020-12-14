import 'wish_list_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'wish_list_page.dart';

class WishListModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $WishListController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => WishListPage()),
      ];

  static Inject get to => Inject<WishListModule>.of();
}
