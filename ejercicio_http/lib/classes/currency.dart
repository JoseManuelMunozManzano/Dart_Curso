// To parse this JSON data, do
//
//     final currencies = currenciesFromJson(jsonString);

import 'dart:convert';

Currency currenciesFromJson(String str) => Currency.fromJson(json.decode(str));

String currenciesToJson(Currency data) => json.encode(data.toJson());

class Currency {
  Cop cop;

  Currency({
    required this.cop,
  });

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
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
