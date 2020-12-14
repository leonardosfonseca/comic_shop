import 'package:comic_shop/app/modules/start/submodules/cart/components/cart_list/cart_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CartListWidget extends StatefulWidget {
  @override
  _CartListWidgetState createState() => _CartListWidgetState();
}

class _CartListWidgetState
    extends ModularState<CartListWidget, CartListController> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: controller.listProducts.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var current = controller.listProducts[index];
          return Card(
            margin: EdgeInsets.all(5),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(current.comic.thumbnail.path +
                    "." +
                    current.comic.thumbnail.extension),
              ),
              title: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${current.comic.title}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "\$ ${current.comic.prices.first.price}",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.remove_circle_outline,
                      color: Colors.black54,
                    ),
                    onPressed: () {
                      current.remove();
                    },
                  ),
                  Observer(builder: (_) {
                    return Text(
                      "${current.quantidade}",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black45,
                      ),
                    );
                  }),
                  IconButton(
                    icon: Icon(
                      Icons.add_circle_outline,
                      color: Colors.black54,
                    ),
                    onPressed: () {
                      current.addQuantity();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
