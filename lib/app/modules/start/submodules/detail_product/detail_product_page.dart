import 'package:comic_shop/app/modules/start/models/marvelAPI/comics_new.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'detail_product_controller.dart';

class DetailProductPage extends StatefulWidget {
  final ComicsNew comic;

  const DetailProductPage({Key key, this.comic}) : super(key: key);
  @override
  _DetailProductPageState createState() => _DetailProductPageState();
}

class _DetailProductPageState
    extends ModularState<DetailProductPage, DetailProductController> {
  _DetailProductPageState();

  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Detail",
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          backgroundColor: Color(0xfff9f9f9),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite_border),
              color: Colors.black54,
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Stack(
          children: [
            Opacity(
              child: Image.asset("assets/background.jpg"),
              opacity: 0.1,
            ),
            SizedBox(
              height: 400,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Image.network(
                    widget.comic.thumbnail.path +
                        '.' +
                        widget.comic.thumbnail.extension,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 420,
                      left: 30,
                      right: 30,
                    ),
                    child: Column(
                      children: [
                        Text(
                          widget.comic.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "\$ " + widget.comic.prices.first.price,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 20,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Description:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.comic.description,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Page count: " + widget.comic.pageCount.toString(),
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
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
                          onPressed: () {
                            controller.addProductToCart(widget.comic);
                            Modular.to.pushNamed("/Cart");
                          },
                          child: Text(
                            "Add to Cart",
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
          ],
        )));
  }
}
