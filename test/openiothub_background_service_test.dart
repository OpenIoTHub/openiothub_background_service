import 'package:flutter_test/flutter_test.dart';
import 'package:openiothub_background_service/openiothub_background_service.dart';
import 'package:openiothub_background_service/openiothub_background_service_platform_interface.dart';
import 'package:openiothub_background_service/openiothub_background_service_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOpeniothubBackgroundServicePlatform
    with MockPlatformInterfaceMixin
    implements OpeniothubBackgroundServicePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OpeniothubBackgroundServicePlatform initialPlatform = OpeniothubBackgroundServicePlatform.instance;

  test('$MethodChannelOpeniothubBackgroundService is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOpeniothubBackgroundService>());
  });

  test('getPlatformVersion', () async {
    OpeniothubBackgroundService openiothubBackgroundServicePlugin = OpeniothubBackgroundService();
    MockOpeniothubBackgroundServicePlatform fakePlatform = MockOpeniothubBackgroundServicePlatform();
    OpeniothubBackgroundServicePlatform.instance = fakePlatform;

    expect(await openiothubBackgroundServicePlugin.getPlatformVersion(), '42');
  });
}
