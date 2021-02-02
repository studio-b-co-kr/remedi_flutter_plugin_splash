import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:unique_ids/unique_ids.dart';

class AppPreferences {
  static const String _KEY_APP_ID = "app_id";
  final _storage = FlutterSecureStorage();

  AppPreferences._singleton();

  static AppPreferences get instance => AppPreferences._singleton();

  Future<String> get appId async {
    String uuid = await _storage.read(key: _KEY_APP_ID);

    if (uuid == null || uuid.isEmpty) {
      try {
        uuid = await UniqueIds.uuid;
      } on PlatformException {
        return "";
      }
      await _storage.write(key: _KEY_APP_ID, value: uuid);
    }
    return uuid;
  }
}
