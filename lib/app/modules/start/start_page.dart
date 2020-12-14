import 'package:comic_shop/app/modules/start/submodules/home/home_module.dart';
import 'package:comic_shop/app/modules/start/submodules/orders/orders_module.dart';
import 'package:comic_shop/app/modules/start/submodules/wish_list/wish_list_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'start_controller.dart';

class StartPage extends StatefulWidget {
  final String title;
  const StartPage({Key key, this.title = "Start"}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends ModularState<StartPage, StartController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller.pageViewController,
        children: [
          RouterOutlet(
            module: HomeModule(),
          ),
          RouterOutlet(
            module: WishListModule(),
          ),
          RouterOutlet(
            module: OrdersModule(),
          ),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
          animation: controller.pageViewController,
          builder: (context, snapshot) {
            return BottomNavigationBar(
              currentIndex: controller.pageViewController?.page?.round() ?? 0,
              onTap: (index) {
                controller.pageViewController.jumpToPage(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  activeIcon: Icon(Icons.favorite),
                  label: "Wish List",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt_outlined),
                  activeIcon: Icon(Icons.list_alt),
                  label: "Orders",
                ),
              ],
            );
          }),
    );
  }
}
