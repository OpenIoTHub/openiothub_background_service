import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'openiothub_background_service_method_channel.dart';

abstract class OpeniothubBackgroundServicePlatform extends PlatformInterface {
  /// Constructs a OpeniothubBackgroundServicePlatform.
  OpeniothubBackgroundServicePlatform() : super(token: _token);

  static final Object _token = Object();

  static OpeniothubBackgroundServicePlatform _instance = MethodChannelOpeniothubBackgroundService();

  /// The default instance of [OpeniothubBackgroundServicePlatform] to use.
  ///
  /// Defaults to [MethodChannelOpeniothubBackgroundService].
  static OpeniothubBackgroundServicePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OpeniothubBackgroundServicePlatform] when
  /// they register themselves.
  static set instance(OpeniothubBackgroundServicePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
