
import 'package:shared_preferences/shared_preferences.dart';

class CacheData {

  static CacheData shared = CacheData._();
  CacheData._();

  final walkThrough = 'walkThrough';

  void saveWalkThrough() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool(walkThrough, true);
  }

  Future<bool> getWalkThrough() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool(walkThrough) ?? false;
  }

}