import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'photographer_response.g.dart';

Photographer photographerFromJson(String str) =>
    Photographer.fromJson(json.decode(str));

String photographerToJson(Photographer data) => json.encode(data.toJson());

@JsonSerializable()
class Photographer {
  int? page;
  int? perPage;
  List<Photo> photos;
  int? totalResults;
  String? nextPage;

  Photographer({
    required this.page,
    required this.perPage,
    required this.photos,
    required this.totalResults,
    required this.nextPage,
  });

  factory Photographer.fromJson(Map<String, dynamic> json) =>
      _$PhotographerFromJson(json);

  Map<String, dynamic> toJson() => _$PhotographerToJson(this);
}

@JsonSerializable()
class Photo {
  int? id;
  int? width;
  int? height;
  String? url;
  String? photographer;
  String? photographerUrl;
  int? photographerId;
  String? avgColor;
  Src? src;
  bool? liked;
  String? alt;

  Photo({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
    required this.photographer,
    required this.photographerUrl,
    required this.photographerId,
    required this.avgColor,
    required this.src,
    required this.liked,
    required this.alt,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}

@JsonSerializable()
class Src {
  String? original;
  String? large2X;
  String? large;
  String? medium;
  String? small;
  String? portrait;
  String? landscape;
  String? tiny;

  Src({
    required this.original,
    required this.large2X,
    required this.large,
    required this.medium,
    required this.small,
    required this.portrait,
    required this.landscape,
    required this.tiny,
  });

  factory Src.fromJson(Map<String, dynamic> json) => _$SrcFromJson(json);

  Map<String, dynamic> toJson() => _$SrcToJson(this);
}
