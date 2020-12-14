import 'package:comic_shop/app/modules/start/submodules/cart/components/cart_total/cart_total_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CartTotalWidget extends StatefulWidget {
  @override
  _CartTotalWidgetState createState() => _CartTotalWidgetState();
}

class _CartTotalWidgetState
    extends ModularState<CartTotalWidget, CartTotalController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Order:"),
              Observer(builder: (_) {
                return Text("\$ ${controller.total.toStringAsFixed(2)}");
              }),
            ],
          )
        ],
      ),
    );
  }
}
