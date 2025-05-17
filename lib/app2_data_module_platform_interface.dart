import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'app2_data_module_method_channel.dart';

abstract class App2DataModulePlatform extends PlatformInterface {
  /// Constructs a App2DataModulePlatform.
  App2DataModulePlatform() : super(token: _token);

  static final Object _token = Object();

  static App2DataModulePlatform _instance = MethodChannelApp2DataModule();

  /// The default instance of [App2DataModulePlatform] to use.
  ///
  /// Defaults to [MethodChannelApp2DataModule].
  static App2DataModulePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [App2DataModulePlatform] when
  /// they register themselves.
  static set instance(App2DataModulePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
