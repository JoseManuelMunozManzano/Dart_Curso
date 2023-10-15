// To parse this JSON data, do
//
//     final currencies = currenciesFromJson(jsonString);

import 'dart:convert';

Currencies currenciesFromJson(String str) =>
    Currencies.fromJson(json.decode(str));

String currenciesToJson(Currencies data) => json.encode(data.toJson());

class Currencies {
  Cop cop;

  Currencies({
    required this.cop,
  });

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        cop: Cop.fromJson(json["COP"]),
      );

  Map<String, dynamic> toJson() => {
        "COP": cop.toJson(),
      };
}

class Cop {
  String name;
  String symbol;

  Cop({
    required this.name,
    required this.symbol,
  });

  factory Cop.fromJson(Map<String, dynamic> json) => Cop(
        name: json["name"],
        symbol: json["symbol"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "symbol": symbol,
      };
}
