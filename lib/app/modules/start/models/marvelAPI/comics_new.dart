import 'package:comic_shop/app/modules/start/models/marvelAPI/creators.dart';
import 'package:comic_shop/app/modules/start/models/marvelAPI/series.dart';
import 'package:comic_shop/app/modules/start/models/marvelAPI/prices.dart';
import 'package:comic_shop/app/modules/start/models/marvelAPI/thumbnail.dart';

import 'Events.dart';
//import 'Images.dart.old';
import 'Stories.dart';

class ComicsNew {
  int id;
  int digitalId;
  String title;
  String variantDescription;
  String description;
  String modified;
  String isbn;
  String upc;
  String diamondCode;
  String ean;
  String issn;
  String format;
  int pageCount;
  List<String> textObjects;
  String resourceURI;
  List<String> urls;
  Series series;
  List<Null> variants;
  List<Null> collections;
  List<Null> collectedIssues;
  List<String> dates;
  List<Prices> prices;
  Thumbnail thumbnail;
  List<Null> images;
  Creators creators;
  Map<String, dynamic> characters;
  Stories stories;
  Events events;

  ComicsNew(
      {this.id,
      this.digitalId,
      this.title,
      this.variantDescription,
      this.description,
      this.modified,
      this.isbn,
      this.upc,
      this.diamondCode,
      this.ean,
      this.issn,
      this.format,
      this.pageCount,
      this.textObjects,
      this.resourceURI,
      this.urls,
      this.series,
      this.variants,
      this.collections,
      this.collectedIssues,
      this.dates,
      this.prices,
      this.thumbnail,
      this.images,
      this.creators,
      this.characters,
      this.stories,
      this.events});

  ComicsNew.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    digitalId = json['digitalId'];
    title = json['title'];
    variantDescription = json['variantDescription'] == null
        ? "Sem descrição "
        : json['variantDescription'];
    description =
        json['description'] == null ? "Sem descrição " : json['description'];
    modified = json['modified'];
    isbn = json['isbn'];
    upc = json['upc'];
    diamondCode = json['diamondCode'];
    ean = json['ean'];
    issn = json['issn'];
    format = json['format'];
    pageCount = json['pageCount'];

    resourceURI = json['resourceURI'];

    series =
        json['series'] != null ? new Series.fromJson(json['series']) : null;

    if (json['prices'] != null) {
      prices = new List<Prices>();
      json['prices'].forEach((v) {
        prices.add(new Prices.fromJson(v));
      });
    }

    thumbnail = json['thumbnail'] != null
        ? new Thumbnail.fromJson(json['thumbnail'])
        : null;
    creators = json['creators'] != null
        ? new Creators.fromJson(json['creators'])
        : null;
    characters = json['characters'] != null ? json['characters'] : null;
    stories =
        json['stories'] != null ? new Stories.fromJson(json['stories']) : null;
    events =
        json['events'] != null ? new Events.fromJson(json['events']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['digitalId'] = this.digitalId;
    data['title'] = this.title;
    data['variantDescription'] = this.variantDescription;
    data['description'] = this.description;
    data['modified'] = this.modified;
    data['isbn'] = this.isbn;
    data['upc'] = this.upc;
    data['diamondCode'] = this.diamondCode;
    data['ean'] = this.ean;
    data['issn'] = this.issn;
    data['format'] = this.format;
    data['pageCount'] = this.pageCount;

    data['resourceURI'] = this.resourceURI;

    if (this.series != null) {
      data['series'] = this.series.toJson();
    }

    if (this.thumbnail != null) {
      data['thumbnail'] = this.thumbnail.toJson();
    }

    if (this.creators != null) {
      data['creators'] = this.creators.toJson();
    }
    if (this.characters != null) {
      data['characters'] = this.characters;
    }
    if (this.stories != null) {
      data['stories'] = this.stories.toJson();
    }
    if (this.prices != null) {
      data['prices'] = this.prices.map((v) => v.toJson()).toList();
    }
    if (this.events != null) {
      data['events'] = this.events.toJson();
    }
    return data;
  }
}
