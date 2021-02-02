import 'dart:convert';

abstract class IDto {
  Map<String, dynamic> toJsonMap();

  String toJsonString() {
    return jsonEncode(toJsonMap());
  }
}
