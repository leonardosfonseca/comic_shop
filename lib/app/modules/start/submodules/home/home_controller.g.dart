// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(i<ComicsNewRepository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$statusAtom = Atom(name: '_HomeControllerBase.status');

  @override
  HomeStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(HomeStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$fetchComicsAsyncAction =
      AsyncAction('_HomeControllerBase.fetchComics');

  @override
  Future<void> fetchComics() {
    return _$fetchComicsAsyncAction.run(() => super.fetchComics());
  }

  @override
  String toString() {
    return '''
status: ${status}
    ''';
  }
}
