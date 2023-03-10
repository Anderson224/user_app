import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  static Future setProperty(String property, String value) async {
    await const FlutterSecureStorage().write(key: property, value: value);
  }

  static Future<String?> getProperty(String property) async {
    return const FlutterSecureStorage().read(key: property);
  }

  static Future deleteProperty(String property) async {
    await const FlutterSecureStorage().delete(key: property);
  }
}
