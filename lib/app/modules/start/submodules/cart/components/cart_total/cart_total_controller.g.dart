// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_total_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CartTotalController = BindInject(
  (i) => CartTotalController(i<CartController>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartTotalController on _CartTotalControllerBase, Store {
  Computed<double> _$totalComputed;

  @override
  double get total => (_$totalComputed ??= Computed<double>(() => super.total,
          name: '_CartTotalControllerBase.total'))
      .value;

  @override
  String toString() {
    return '''
total: ${total}
    ''';
  }
}
