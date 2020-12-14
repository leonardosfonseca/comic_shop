import 'package:comic_shop/app/modules/start/models/marvelAPI/comics_new.dart';
import 'package:mobx/mobx.dart';
part 'cart_model.g.dart';

class CartModel = _CartModelBase with _$CartModel;

abstract class _CartModelBase with Store {
  @observable
  ComicsNew comic;

  @observable
  int _quantidade = 1;

  @computed
  int get quantidade => _quantidade;

  _CartModelBase(this.comic);

  @action
  void addQuantity() {
    if (_quantidade <= 9) {
      _quantidade++;
    }
  }

  @action
  void remove() {
    if (_quantidade >= 2) {
      _quantidade--;
    }
  }
}
