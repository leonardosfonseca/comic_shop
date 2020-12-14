import 'dart:ui';

import 'package:flutter/material.dart';

class SliverAppbarWidget extends StatefulWidget {
  final String title;

  const SliverAppbarWidget({Key key, this.title}) : super(key: key);
  @override
  _SliverAppbarWidgetState createState() => _SliverAppbarWidgetState();
}

class _SliverAppbarWidgetState extends State<SliverAppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      iconTheme: IconThemeData(color: Colors.black54),
      backgroundColor: Color(0xfff9f9f9),
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_basket),
          onPressed: () {},
        ),
      ],
      expandedHeight: 125,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w900,
            fontSize: 25,
          ),
        ),
        background: Image.asset(
          'assets/background_appbar.jpg',
          fit: BoxFit.cover,
          color: Colors.grey.withOpacity(0.25),
          colorBlendMode: BlendMode.modulate,
        ),
      ),
    );
  }
}
