import 'package:comic_shop/app/modules/start/models/marvelAPI/comics_new.dart';
import 'package:comic_shop/app/modules/start/submodules/components/appbar/sliver_appbar_widget.dart';
import 'package:comic_shop/app/modules/start/submodules/home/home_status.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'components/products/products_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Comic Shop"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          dragStartBehavior: DragStartBehavior.start,
          headerSliverBuilder: (context, condition) {
            return <Widget>[
              SliverAppbarWidget(title: widget.title),
            ];
          },
          body: Observer(
            builder: (_) {
              if (controller.status == HomeStatus.loading) {
                return Center(child: CircularProgressIndicator());
              } else if (controller.status == HomeStatus.success) {
                final list = controller.status.value as List<ComicsNew>;
                return (list.isNotEmpty)
                    ? AnimationLimiter(
                        child: GridView.builder(
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.all(12),
                          addAutomaticKeepAlives: true,
                          gridDelegate:
                              new SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            ComicsNew comicsNew = list[index];
                            return AnimationConfiguration.staggeredGrid(
                              position: index,
                              duration: const Duration(milliseconds: 375),
                              columnCount: 2,
                              child: ScaleAnimation(
                                child: GestureDetector(
                                  child: ProductsWidget(
                                    title: comicsNew.title,
                                    thumbnail: comicsNew.thumbnail,
                                    price: "\$ " + comicsNew.prices.first.price,
                                  ),
                                  onTap: () {
                                    Modular.to.pushNamed("/DetailProduct",
                                        arguments: comicsNew);
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    : Center(
                        child: CircularProgressIndicator(),
                      );
              } else if (controller.status == HomeStatus.error) {
                return Center(
                  child: Text(
                    "Parece que estamos fora do ar!",
                  ),
                );
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }
}
