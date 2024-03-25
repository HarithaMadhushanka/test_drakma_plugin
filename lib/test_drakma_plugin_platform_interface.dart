import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'test_drakma_plugin_method_channel.dart';

abstract class TestDrakmaPluginPlatform extends PlatformInterface {
  /// Constructs a TestDrakmaPluginPlatform.
  TestDrakmaPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static TestDrakmaPluginPlatform _instance = MethodChannelTestDrakmaPlugin();

  /// The default instance of [TestDrakmaPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelTestDrakmaPlugin].
  static TestDrakmaPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TestDrakmaPluginPlatform] when
  /// they register themselves.
  static set instance(TestDrakmaPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
