import 'dart:convert';

import 'package:flutter/foundation.dart';

class MyRadioList {
  final List<MyRadio> radios;
  MyRadioList({
    this.radios,
  });
  

  MyRadioList copyWith({
    List<MyRadio> radios,
  }) {
    return MyRadioList(
      radios: radios ?? this.radios,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'radios': radios?.map((x) => x.toMap())?.toList(),
    };
  }

  factory MyRadioList.fromMap(Map<String, dynamic> map) {
    return MyRadioList(
      radios: List<MyRadio>.from(map['radios']?.map((x) => MyRadio.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory MyRadioList.fromJson(String source) => MyRadioList.fromMap(json.decode(source));

  @override
  String toString() => 'MyRadioList(radios: $radios)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MyRadioList &&
      listEquals(other.radios, radios);
  }

  @override
  int get hashCode => radios.hashCode;
}


class MyRadio {
  final int id;
  final int order;
  final String name;
  final String tagline;
  final String desc;
  final String url;
  final String category;
  final String icon;
  final String image;
  final String lang;
  final String color;

  MyRadio({
    this.id,
    this.order,
    this.name,
    this.tagline,
    this.desc,
    this.url,
    this.category,
    this.icon,
    this.image,
    this.lang,
    this.color,
  });


  MyRadio copyWith({
    int id,
    int order,
    String name,
    String tagline,
    String desc,
    String url,
    String category,
    String icon,
    String image,
    String lang,
    String color,
  }) {
    return MyRadio(
      id: id ?? this.id,
      order: order ?? this.order,
      name: name ?? this.name,
      tagline: tagline ?? this.tagline,
      desc: desc ?? this.desc,
      url: url ?? this.url,
      category: category ?? this.category,
      icon: icon ?? this.icon,
      image: image ?? this.image,
      lang: lang ?? this.lang,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'order': order,
      'name': name,
      'tagline': tagline,
      'desc': desc,
      'url': url,
      'category': category,
      'icon': icon,
      'image': image,
      'lang': lang,
      'color': color,
    };
  }

  factory MyRadio.fromMap(Map<String, dynamic> map) {
    return MyRadio(
      id: map['id'],
      order: map['order'],
      name: map['name'],
      tagline: map['tagline'],
      desc: map['desc'],
      url: map['url'],
      category: map['category'],
      icon: map['icon'],
      image: map['image'],
      lang: map['lang'],
      color: map['color'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MyRadio.fromJson(String source) => MyRadio.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MyRadio(id: $id, order: $order, name: $name, tagline: $tagline, desc: $desc, url: $url, category: $category, icon: $icon, image: $image, lang: $lang, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MyRadio &&
      other.id == id &&
      other.order == order &&
      other.name == name &&
      other.tagline == tagline &&
      other.desc == desc &&
      other.url == url &&
      other.category == category &&
      other.icon == icon &&
      other.image == image &&
      other.lang == lang &&
      other.color == color;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      order.hashCode ^
      name.hashCode ^
      tagline.hashCode ^
      desc.hashCode ^
      url.hashCode ^
      category.hashCode ^
      icon.hashCode ^
      image.hashCode ^
      lang.hashCode ^
      color.hashCode;
  }
}
