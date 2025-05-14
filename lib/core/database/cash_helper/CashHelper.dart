import 'package:shared_preferences/shared_preferences.dart';

class CashHelper {
  static late SharedPreferences sharedPreferences;
  init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  String? getDataString({required String key}) {
    return sharedPreferences.getString(key);
  }

  Future<bool> saveData({required String key, required dynamic value}) async {
    if (value == null) {
      throw Exception("Cannot save null value for key: key");
    }
    if (value is String) return await sharedPreferences.setString(key, value);

    if (value is bool) return await sharedPreferences.setBool(key, value);
    if (value is int) {
      return await sharedPreferences.setInt(key, value);
    }
    if (value is double) {
      return await sharedPreferences.setDouble(key, value);
    }

    throw Exception("Unsupported or null value type for key: key");
  }

  dynamic getData({required String key}) {
    return sharedPreferences.get(key);
  }

  Future<dynamic> removeData({required String key}) async {
    return await sharedPreferences.remove(key);
  }

  Future<bool> containsKey({required String key}) async {
    return sharedPreferences.containsKey(key);
  }

  Future<bool> clearData({required String key}) async {
    return sharedPreferences.clear();
  }

  Future<dynamic> put({required String key, required dynamic value}) async {
    if (value is String) return await sharedPreferences.setString(key, value);

    if (value is bool) return await sharedPreferences.setBool(key, value);
    if (value is int) {
      return await sharedPreferences.setInt(key, value);
    }
    if (value is double) {
      return await sharedPreferences.setDouble(key, value);
    }

    throw Exception("Unsupported or null value type for key: key");
  }
}
