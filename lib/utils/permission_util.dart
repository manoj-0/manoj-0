import 'package:permission_handler/permission_handler.dart';

class PermissionUtil {
  static Future<int> checkPermission(List<Permission> permission) async {
    int deniedCount = 0;
    var response = await permission.request();

    for (var i in permission) {
      print("$i this is permission response");
      if (response[i] != PermissionStatus.granted) {
        deniedCount++;
      }
    }

    return deniedCount;
  }
}
