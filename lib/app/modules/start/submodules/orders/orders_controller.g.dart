// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $OrdersController = BindInject(
  (i) => OrdersController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OrdersController on _OrdersControllerBase, Store {
  final _$valueAtom = Atom(name: '_OrdersControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_OrdersControllerBaseActionController =
      ActionController(name: '_OrdersControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_OrdersControllerBaseActionController.startAction(
        name: '_OrdersControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_OrdersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
