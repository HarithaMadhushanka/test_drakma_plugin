import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'test_drakma_plugin_platform_interface.dart';

/// An implementation of [TestDrakmaPluginPlatform] that uses method channels.
class MethodChannelTestDrakmaPlugin extends TestDrakmaPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('test_drakma_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
