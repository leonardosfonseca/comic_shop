// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_list_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CartListController = BindInject(
  (i) => CartListController(i<CartController>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartListController on _CartListControllerBase, Store {
  Computed<ObservableList<CartModel>> _$listProductsComputed;

  @override
  ObservableList<CartModel> get listProducts => (_$listProductsComputed ??=
          Computed<ObservableList<CartModel>>(() => super.listProducts,
              name: '_CartListControllerBase.listProducts'))
      .value;

  @override
  String toString() {
    return '''
listProducts: ${listProducts}
    ''';
  }
}
