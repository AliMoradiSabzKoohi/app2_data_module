import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'app2_data_module_platform_interface.dart';

/// An implementation of [App2DataModulePlatform] that uses method channels.
class MethodChannelApp2DataModule extends App2DataModulePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('app2_data_module');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
