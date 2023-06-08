import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'openiothub_background_service_platform_interface.dart';

/// An implementation of [OpeniothubBackgroundServicePlatform] that uses method channels.
class MethodChannelOpeniothubBackgroundService extends OpeniothubBackgroundServicePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('openiothub_background_service');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
