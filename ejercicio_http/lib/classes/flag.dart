// To parse this JSON data, do
//
//     final flags = flagsFromJson(jsonString);

import 'dart:convert';

Flag flagsFromJson(String str) => Flag.fromJson(json.decode(str));

String flagsToJson(Flag data) => json.encode(data.toJson());

class Flag {
  String png;
  String svg;
  String alt;

  Flag({
    required this.png,
    required this.svg,
    required this.alt,
  });

  factory Flag.fromJson(Map<String, dynamic> json) => Flag(
        png: json["png"],
        svg: json["svg"],
        alt: json["alt"],
      );

  Map<String, dynamic> toJson() => {
        "png": png,
        "svg": svg,
        "alt": alt,
      };
}
