import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:health_connect/constants.dart';

import 'health_connect_platform_interface.dart';

/// An implementation of [HealthConnectPlatform] that uses method channels.
class MethodChannelHealthConnect extends HealthConnectPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel(Constants.methodChannelToAndroid);

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>(Constants.getPlatformVersion);
    return version;
  }


}
