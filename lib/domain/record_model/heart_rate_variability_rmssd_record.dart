import 'package:health_connect/constants.dart';
import 'package:health_connect/domain/record_model/_base/instantaneous_record.dart';
import 'package:health_connect/domain/record_model/_base/interval_record.dart';
import 'package:health_connect/domain/units/data_no_unit.dart';

class HeartRateVariabilityRmssdRecord extends InstantaneousRecord {
  final DataNoUnit dataNoUnit;

  HeartRateVariabilityRmssdRecord(
      {required this.dataNoUnit, required super.metadata});

  factory HeartRateVariabilityRmssdRecord.fromJson(Map<String, dynamic> json) {
    final parent = InstantaneousRecord.fromJson(json);
    return HeartRateVariabilityRmssdRecord(
        metadata: parent.metadata,
        dataNoUnit: DataNoUnit(json[Constants.heartRateVariabilityMillis]));
  }
}
