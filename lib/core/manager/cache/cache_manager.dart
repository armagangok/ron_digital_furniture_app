import 'package:get_storage/get_storage.dart';

enum CacheManagerKey { token }

class CacheManager {
  GetStorage storage = GetStorage();

  Future<bool> saveToken(String token) async {
    await storage.write(CacheManagerKey.token.toString(), token);
    return true;
  }

  String getToken() {
    String token = storage.read(CacheManagerKey.token.toString());
    return token;
  }

  Future<void> removeToken() async {
    await storage.remove(CacheManagerKey.token.toString());
  }
}
