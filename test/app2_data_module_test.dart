import 'package:flutter_test/flutter_test.dart';
import 'package:app2_data_module/app2_data_module.dart';
import 'package:app2_data_module/app2_data_module_platform_interface.dart';
import 'package:app2_data_module/app2_data_module_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockApp2DataModulePlatform
    with MockPlatformInterfaceMixin
    implements App2DataModulePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final App2DataModulePlatform initialPlatform = App2DataModulePlatform.instance;

  test('$MethodChannelApp2DataModule is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelApp2DataModule>());
  });

  test('getPlatformVersion', () async {
    App2DataModule app2DataModulePlugin = App2DataModule();
    MockApp2DataModulePlatform fakePlatform = MockApp2DataModulePlatform();
    App2DataModulePlatform.instance = fakePlatform;

    expect(await app2DataModulePlugin.getPlatformVersion(), '42');
  });
}
