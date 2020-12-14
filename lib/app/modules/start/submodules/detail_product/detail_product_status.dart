enum DetailProductStatus { loading, success, error, none }

extension DetailProductStatusExt on DetailProductStatus {
  static var _value;
  get value => _value;
  set value(value) => _value = value;
}
