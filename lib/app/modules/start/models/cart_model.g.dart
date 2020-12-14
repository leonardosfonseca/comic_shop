// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartModel on _CartModelBase, Store {
  Computed<int> _$quantidadeComputed;

  @override
  int get quantidade =>
      (_$quantidadeComputed ??= Computed<int>(() => super.quantidade,
              name: '_CartModelBase.quantidade'))
          .value;

  final _$_quantidadeAtom = Atom(name: '_CartModelBase._quantidade');

  @override
  int get _quantidade {
    _$_quantidadeAtom.reportRead();
    return super._quantidade;
  }

  @override
  set _quantidade(int value) {
    _$_quantidadeAtom.reportWrite(value, super._quantidade, () {
      super._quantidade = value;
    });
  }

  final _$_CartModelBaseActionController =
      ActionController(name: '_CartModelBase');

  @override
  void addQuantity() {
    final _$actionInfo = _$_CartModelBaseActionController.startAction(
        name: '_CartModelBase.addQuantity');
    try {
      return super.addQuantity();
    } finally {
      _$_CartModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remove() {
    final _$actionInfo = _$_CartModelBaseActionController.startAction(
        name: '_CartModelBase.remove');
    try {
      return super.remove();
    } finally {
      _$_CartModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
quantidade: ${quantidade}
    ''';
  }
}
