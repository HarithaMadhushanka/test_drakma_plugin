import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_drakma_plugin/test_drakma_plugin_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelTestDrakmaPlugin platform = MethodChannelTestDrakmaPlugin();
  const MethodChannel channel = MethodChannel('test_drakma_plugin');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
