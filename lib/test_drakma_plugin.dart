
import 'test_drakma_plugin_platform_interface.dart';

class TestDrakmaPlugin {
  Future<String?> getPlatformVersion() {
    return TestDrakmaPluginPlatform.instance.getPlatformVersion();
  }
}
