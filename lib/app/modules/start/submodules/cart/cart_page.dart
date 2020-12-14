import 'package:comic_shop/app/modules/start/submodules/cart/components/cart_list/cart_list_widget.dart';
import 'package:comic_shop/app/modules/start/submodules/cart/components/cart_total/cart_total_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'cart_controller.dart';

class CartPage extends StatefulWidget {
  final String title;
  const CartPage({Key key, this.title = "Cart"}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends ModularState<CartPage, CartController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Cart",
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Color(0xfff9f9f9),
      ),
      body: Column(
        children: <Widget>[
          CartListWidget(),
          CartTotalWidget(),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.black54,
                    textColor: Color(0xfff9f9f9),
                    onPressed: () {},
                    child: Text(
                      "Checkout",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
