import 'package:health_connect/domain/ReadRecordResponse.dart';
import 'package:health_connect/domain/record.dart';
import 'package:health_connect/enums.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'health_connect_method_channel.dart';

abstract class HealthConnectPlatform extends PlatformInterface {
  /// Constructs a HealthConnectPlatform.
  HealthConnectPlatform() : super(token: _token);

  static final Object _token = Object();

  static HealthConnectPlatform _instance = MethodChannelHealthConnect();

  /// The default instance of [HealthConnectPlatform] to use.
  ///
  /// Defaults to [MethodChannelHealthConnect].
  static HealthConnectPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [HealthConnectPlatform] when
  /// they register themselves.
  static set instance(HealthConnectPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<HealthConnectStatus> isProviderAvailable();

  Future<List<RecordClass>> requestPermissions(List<RecordClass> permissions);

  Future<List<RecordClass>> checkPermissions(List<RecordClass> permissions);

  Future<ReadRecordResponse> readData(RecordClass recordClass);

  Future<void> write();
}
