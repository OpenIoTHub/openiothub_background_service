
import 'openiothub_background_service_platform_interface.dart';

class OpeniothubBackgroundService {
  Future<String?> getPlatformVersion() {
    return OpeniothubBackgroundServicePlatform.instance.getPlatformVersion();
  }
}
