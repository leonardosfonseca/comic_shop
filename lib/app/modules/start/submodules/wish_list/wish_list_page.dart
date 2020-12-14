import 'package:comic_shop/app/modules/start/submodules/components/appbar/sliver_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'wish_list_controller.dart';

class WishListPage extends StatefulWidget {
  final String title;
  const WishListPage({Key key, this.title = "Wish List"}) : super(key: key);

  @override
  _WishListPageState createState() => _WishListPageState();
}

class _WishListPageState
    extends ModularState<WishListPage, WishListController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, condition) {
            return <Widget>[
              SliverAppbarWidget(title: widget.title),
            ];
          },
          body: Center(
            child: Text("Aguarde"),
          ),
        ),
      ),
    );
  }
}
