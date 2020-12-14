import 'dart:convert';
import 'package:crypto/crypto.dart';

class Helper {
  static String publicApiKey = "44befa5ea08cca042ee528eab76ed59c";
  static String privateApiKey = "d5b4150cc89af6cc20790ac7a30ecbde533723b6";
}

var url = "http://gateway.marvel.com/v1/public/";
var timeStamp = DateTime.now();
var hash;

String gerarUrl(String assunto, String parametro, {String adicional = ""}) {
  gerarHash();
  String urlFinal =
      "$url$assunto?${parametro}apikey=${Helper.publicApiKey}&hash=$hash&ts=${timeStamp.toIso8601String()}$adicional";
  print(urlFinal);
  return urlFinal;
}

gerarHash() {
  hash = generateMd5(
      timeStamp.toIso8601String() + Helper.privateApiKey + Helper.publicApiKey);
  print(hash);
}

String generateMd5(String input) {
  return md5.convert(utf8.encode(input)).toString();
}
