import 'package:comic_shop/app/modules/start/submodules/components/appbar/sliver_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'orders_controller.dart';

class OrdersPage extends StatefulWidget {
  final String title;
  const OrdersPage({Key key, this.title = "Orders"}) : super(key: key);

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends ModularState<OrdersPage, OrdersController> {
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
