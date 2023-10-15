// To parse this JSON data, do
//
//     final languages = languagesFromJson(jsonString);

import 'dart:convert';

Language languagesFromJson(String str) => Language.fromJson(json.decode(str));

String languagesToJson(Language data) => json.encode(data.toJson());

class Language {
  String spa;

  Language({
    required this.spa,
  });

  factory Language.fromJson(Map<String, dynamic> json) => Language(
        spa: json["spa"],
      );

  Map<String, dynamic> toJson() => {
        "spa": spa,
      };
}
