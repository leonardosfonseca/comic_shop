class Prices {
  String price;

  Prices({this.price});

  Prices.fromJson(Map<String, dynamic> json) {
    price = json['price'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['price'] = this.price;
    return data;
  }
}
