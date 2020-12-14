import 'package:comic_shop/app/modules/start/models/marvelAPI/thumbnail.dart';
import 'package:flutter/material.dart';

class ProductsWidget extends StatelessWidget {
  final String title;
  final Thumbnail thumbnail;
  final String price;

  const ProductsWidget({Key key, this.title, this.thumbnail, this.price})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Opacity(
              child: Image.asset("assets/background.jpg"),
              opacity: 0.1,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 35, bottom: 10),
                child: Image.network(
                  thumbnail.path + '.' + thumbnail.extension,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  price,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
      ),
    );
  }
}
