import 'package:flutter_test/flutter_test.dart';
import 'package:test_drakma_plugin/test_drakma_plugin.dart';
import 'package:test_drakma_plugin/test_drakma_plugin_platform_interface.dart';
import 'package:test_drakma_plugin/test_drakma_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTestDrakmaPluginPlatform
    with MockPlatformInterfaceMixin
    implements TestDrakmaPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TestDrakmaPluginPlatform initialPlatform = TestDrakmaPluginPlatform.instance;

  test('$MethodChannelTestDrakmaPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTestDrakmaPlugin>());
  });

  test('getPlatformVersion', () async {
    TestDrakmaPlugin testDrakmaPlugin = TestDrakmaPlugin();
    MockTestDrakmaPluginPlatform fakePlatform = MockTestDrakmaPluginPlatform();
    TestDrakmaPluginPlatform.instance = fakePlatform;

    expect(await testDrakmaPlugin.getPlatformVersion(), '42');
  });
}
