import 'dart:io';

import 'package:flutter/services.dart';
import 'package:health_connect/constants.dart';
import 'package:health_connect/domain/record_model/_base/record.dart';
import 'package:health_connect/domain/record_model/active_calories_burned_record.dart';
import 'package:health_connect/domain/record_model/basal_body_temperature_record.dart';
import 'package:health_connect/domain/record_model/basal_metabolic_rate_record.dart';
import 'package:health_connect/domain/record_model/blood_glucose_record.dart';
import 'package:health_connect/domain/record_model/blood_pressure_record.dart';
import 'package:health_connect/domain/record_model/body_fat_record.dart';
import 'package:health_connect/domain/record_model/body_temperature_record.dart';
import 'package:health_connect/domain/record_model/body_water_mass_record.dart';
import 'package:health_connect/domain/record_model/bone_mass_record.dart';
import 'package:health_connect/domain/record_model/cervical_mucus_record.dart';
import 'package:health_connect/domain/record_model/cycling_pedaling_cadence_record.dart';
import 'package:health_connect/domain/record_model/distance_record.dart';
import 'package:health_connect/domain/record_model/elevation_gained_record.dart';
import 'package:health_connect/domain/record_model/exercise_session_record.dart';
import 'package:health_connect/domain/record_model/floors_climbed_record.dart';
import 'package:health_connect/domain/record_model/heart_rate_record.dart';
import 'package:health_connect/domain/record_model/heart_rate_variability_rmssd_record.dart';
import 'package:health_connect/domain/record_model/height_record.dart';
import 'package:health_connect/domain/record_model/hydration_record.dart';
import 'package:health_connect/domain/record_model/lean_body_mass_record.dart';
import 'package:health_connect/domain/record_model/menstruation_flow_record.dart';
import 'package:health_connect/domain/record_model/menstruation_period_record.dart';
import 'package:health_connect/domain/record_model/ovulation_test_record.dart';
import 'package:health_connect/domain/record_model/oxygen_saturation_record.dart';
import 'package:health_connect/domain/record_model/power_record.dart';
import 'package:health_connect/domain/record_model/respiratory_rate_record.dart';
import 'package:health_connect/domain/record_model/resting_heart_rate_record.dart';
import 'package:health_connect/domain/record_model/sleep_session_record.dart';
import 'package:health_connect/domain/record_model/sleep_stage_record.dart';
import 'package:health_connect/domain/record_model/speed_record.dart';
import 'package:health_connect/domain/record_model/steps_cadence_record.dart';
import 'package:health_connect/domain/record_model/steps_record.dart';
import 'package:health_connect/domain/record_model/total_calories_burned_record.dart';
import 'package:health_connect/domain/record_model/unknown_record.dart';
import 'package:health_connect/domain/record_model/vo2_max_record.dart';
import 'package:health_connect/domain/record_model/weight_record.dart';
import 'package:health_connect/domain/record_model/wheelchair_pushes_record.dart';
import 'package:health_connect/enums.dart';

import 'record_model/sexual_activity_record.dart';

class RecordMapper {
  static Record getRecordMapper(
      RecordClass recordClass, Map<String, dynamic> json) {
    switch (recordClass) {
      case RecordClass.ActiveCaloriesBurnedRead:
        return ActiveCaloriesBurnedRecord.fromJson(json);
      case RecordClass.BasalBodyTemperatureRead:
        return BasalBodyTemperatureRecord.fromJson(json);
      case RecordClass.BasalMetabolicRateRead:
        return BasalMetabolicRateRecord.fromJson(json);
      case RecordClass.BloodGlucoseRead:
        return BloodGlucoseRecord.fromJson(json);
      case RecordClass.BloodPressureRead:
        return BloodPressureRecord.fromJson(json);
      case RecordClass.BodyFatRead:
        return BodyFatRecord.fromJson(json);
      case RecordClass.BodyTemperatureRead:
        return BodyTemperatureRecord.fromJson(json);
      case RecordClass.BodyWaterMassRead:
        return BodyWaterMassRecord.fromJson(json);
      case RecordClass.BoneMassRead:
        return BoneMassRecord.fromJson(json);
      case RecordClass.CervicalMucusRead:
        return CervicalMucusRecord.fromJson(json);
      case RecordClass.CyclingPedalingCadenceSeriesRead:
        return CyclingPedalingCadenceRecord.fromJson(json);
      case RecordClass.DistanceRead:
        return DistanceRecord.fromJson(json);
      case RecordClass.ElevationGainedRead:
        return ElevationGainedRecord.fromJson(json);
      case RecordClass.ExerciseSessionRead:
        return ExerciseSessionRecord.fromJson(json);
      case RecordClass.FloorsClimbedRead:
        return FloorsClimbedRecord.fromJson(json);
      case RecordClass.HeartRateSeriesRead:
        return HeartRateRecord.fromJson(json);
      case RecordClass.HeartRateVariabilityRmssdRead:
        return HeartRateVariabilityRmssdRecord.fromJson(json);
      case RecordClass.HeightRead:
        return HeightRecord.fromJson(json);
      case RecordClass.HydrationRead:
        return HydrationRecord.fromJson(json);
      case RecordClass.LeanBodyMassRead:
        return LeanBodyMassRecord.fromJson(json);
      case RecordClass.MenstruationFlowRead:
        return MenstruationFlowRecord.fromJson(json);
      case RecordClass.MenstruationPeriodRead:
        return MenstruationPeriodRecord.fromJson(json);
      case RecordClass.NutritionRead:
        throw notImplementedYetException();
      case RecordClass.OvulationTestRead:
        return OvulationTestRecord.fromJson(json);
      case RecordClass.OxygenSaturationRead:
        return OxygenSaturationRecord.fromJson(json);
      case RecordClass.PowerSeriesRead:
        return PowerRecord.fromJson(json);
      case RecordClass.RespiratoryRateRead:
        return RespiratoryRateRecord.fromJson(json);
      case RecordClass.RestingHeartRateRead:
        return RestingHeartRateRecord.fromJson(json);
      case RecordClass.SexualActivityRead:
        return SexualActivityRecord.fromJson(json);
      case RecordClass.SleepSessionRead:
        return SleepSessionRecord.fromJson(json);
      case RecordClass.SleepStageRead:
        return SleepStageRecord.fromJson(json);
      case RecordClass.SpeedSeriesRead:
        return SpeedRecord.fromJson(json);
      case RecordClass.StepsCadenceSeriesRead:
        return StepsCadenceRecord.fromJson(json);
      case RecordClass.StepsRead:
        return StepsRecord.fromJson(json);
      case RecordClass.TotalCaloriesBurnedRead:
        return TotalCaloriesBurnedRecord.fromJson(json);
      case RecordClass.Vo2MaxRead:
        return Vo2MaxRecord.fromJson(json);
      case RecordClass.WeightRead:
        return WeightRecord.fromJson(json);
      case RecordClass.WheelchairPushesRead:
        return WheelchairPushesRecord.fromJson(json);

      default:
        return UnknownRecord();
    }
  }

  static PlatformException notImplementedYetException() {
    throw PlatformException(
        code: Constants.notImplementedYet,
        message: Constants.notImplementedYet);
  }
}
