import 'package:health_connect/domain/record_model/_base/record.dart';

enum HealthConnectStatus {
  OK,
  UnKnown,
  ProviderNotSupported,
  ApiNotSupported,
}

enum DeviceTypes {
  UNKNOWN,
  WATCH,
  PHONE,
  SCALE,
  RING,
  HEAD_MOUNTED,
  FITNESS_BAND,
  CHEST_STRAP,
  SMART_DISPLAY
}

enum EnergyTypes { CALORIES, KILOCALORIES, JOULES, KILOJOULES }

enum BloodGlucoseTypes { MILLIMOLES_PER_LITER, MILLIGRAMS_PER_DECILITER }

enum LengthTypes { METERS, KILOMETERS, MILES, INCHES, FEET }

enum MassTypes { GRAMS, KILOGRAMS, MILLIGRAMS, MICROGRAMS, OUNCES, POUNDS }

enum PowerTypes { WATTS, KILOCALORIES_PER_DAY }

enum TemperatureTypes { CELSIUS, FAHRENHEIT }

enum VelocityTypes { METERS_PER_SECOND, KILOMETERS_PER_HOUR, MILES_PER_HOUR }

enum VolumeTypes { LITERS, MILLILITERS, FLUID_OUNCES_US }

enum MenstruationFlowTypes { FLOW_UNKNOWN, FLOW_LIGHT, FLOW_MEDIUM, FLOW_HEAVY }

enum OvulationTest {
  /**
   * Inconclusive result. Refers to ovulation test results that are indeterminate (e.g. may be
   * testing malfunction, user error, etc.). ". Any unknown value will also be returned as
   * [RESULT_INCONCLUSIVE].
   */
  RESULT_INCONCLUSIVE,

  /**
   * Positive fertility (may also be referred as "peak" fertility). Refers to the peak of the
   * luteinizing hormone (LH) surge and ovulation is expected to occur in 10-36 hours.
   */
  RESULT_POSITIVE,

  /**
   * High fertility. Refers to a rise in estrogen or luteinizing hormone that may signal the
   * fertile window (time in the menstrual cycle when conception is likely to occur).
   */
  RESULT_HIGH,

  /**
   * Negative fertility (may also be referred as "low" fertility). Refers to the time in the
   * cycle where fertility/conception is expected to be low.
   */
  RESULT_NEGATIVE
}

enum Protections{
  PROTECTION_USED_UNKNOWN,
  PROTECTION_USED_PROTECTED,
  PROTECTION_USED_UNPROTECTED
}

enum BodyTemperatureMeasurementLocation {
  MEASUREMENT_LOCATION_UNKNOWN,
  MEASUREMENT_LOCATION_ARMPIT,
  MEASUREMENT_LOCATION_FINGER,
  MEASUREMENT_LOCATION_FOREHEAD,
  MEASUREMENT_LOCATION_MOUTH,
  MEASUREMENT_LOCATION_RECTUM,
  MEASUREMENT_LOCATION_TEMPORAL_ARTERY,
  MEASUREMENT_LOCATION_TOE,
  MEASUREMENT_LOCATION_EAR,
  MEASUREMENT_LOCATION_WRIST,
  MEASUREMENT_LOCATION_VAGINA
}

enum SpecimenSources {
  SPECIMEN_SOURCE_UNKNOWN,
  SPECIMEN_SOURCE_INTERSTITIAL_FLUID,
  SPECIMEN_SOURCE_CAPILLARY_BLOOD,
  SPECIMEN_SOURCE_PLASMA,
  SPECIMEN_SOURCE_SERUM,
  SPECIMEN_SOURCE_TEARS,
  SPECIMEN_SOURCE_WHOLE_BLOOD
}

enum MealType {
  MEAL_TYPE_UNKNOWN,
  /** Use this for the first meal of the day, usually the morning meal. */
  MEAL_TYPE_BREAKFAST,
  /** Use this for the noon meal. */
  MEAL_TYPE_LUNCH,
  /** Use this for last meal of the day, usually the evening meal. */
  MEAL_TYPE_DINNER,
  /** Any meal outside of the usual three meals per day. */
  MEAL_TYPE_SNACK
}

enum RelationToMeals {
  RELATION_TO_MEAL_UNKNOWN,
  RELATION_TO_MEAL_GENERAL,
  RELATION_TO_MEAL_FASTING,
  RELATION_TO_MEAL_BEFORE_MEAL,
  RELATION_TO_MEAL_AFTER_MEAL,
}

enum BodyPositions {
  BODY_POSITION_UNKNOWN,
  BODY_POSITION_STANDING_UP,
  BODY_POSITION_SITTING_DOWN,
  BODY_POSITION_LYING_DOWN,
  BODY_POSITION_RECLINING
}

enum MeasurementLocations {
  MEASUREMENT_LOCATION_UNKNOWN,
  MEASUREMENT_LOCATION_LEFT_WRIST,
  MEASUREMENT_LOCATION_RIGHT_WRIST,
  MEASUREMENT_LOCATION_LEFT_UPPER_ARM,
  MEASUREMENT_LOCATION_RIGHT_UPPER_ARM
}

enum Appearance {
  APPEARANCE_UNKNOWN,
  APPEARANCE_DRY,
  APPEARANCE_STICKY,
  APPEARANCE_CREAMY,
  APPEARANCE_WATERY,
  APPEARANCE_EGG_WHITE,
  APPEARANCE_UNUSUAL
}

enum Sensation {
  SENSATION_UNKNOWN,
  SENSATION_LIGHT,
  SENSATION_MEDIUM,
  SENSATION_HEAVY
}

enum SleepStageTypes {
  STAGE_TYPE_UNKNOWN,
  STAGE_TYPE_AWAKE,
  STAGE_TYPE_SLEEPING,
  STAGE_TYPE_OUT_OF_BED,
  STAGE_TYPE_LIGHT,
  STAGE_TYPE_DEEP,
  STAGE_TYPE_REM,
}

enum MeasurementMethods{
  MEASUREMENT_METHOD_OTHER,
  MEASUREMENT_METHOD_METABOLIC_CART,
  MEASUREMENT_METHOD_HEART_RATE_RATIO,
  MEASUREMENT_METHOD_COOPER_TEST,
  MEASUREMENT_METHOD_MULTISTAGE_FITNESS_TEST,
  MEASUREMENT_METHOD_ROCKPORT_FITNESS_TEST
}

enum ExerciseType {
  EXERCISE_TYPE_BACK_EXTENSION,
  EXERCISE_TYPE_BADMINTON,
  EXERCISE_TYPE_BARBELL_SHOULDER_PRESS,
  EXERCISE_TYPE_BASEBALL,
  EXERCISE_TYPE_BASKETBALL,
  EXERCISE_TYPE_BENCH_PRESS,
  EXERCISE_TYPE_BENCH_SIT_UP,
  EXERCISE_TYPE_BIKING,
  EXERCISE_TYPE_BIKING_STATIONARY,
  EXERCISE_TYPE_BOOT_CAMP,
  EXERCISE_TYPE_BOXING,
  EXERCISE_TYPE_BURPEE,
  EXERCISE_TYPE_CALISTHENICS,
  EXERCISE_TYPE_CRICKET,
  EXERCISE_TYPE_CRUNCH,
  EXERCISE_TYPE_DANCING,
  EXERCISE_TYPE_DEADLIFT,
  EXERCISE_TYPE_DUMBBELL_CURL_LEFT_ARM,
  EXERCISE_TYPE_DUMBBELL_CURL_RIGHT_ARM,
  EXERCISE_TYPE_DUMBBELL_FRONT_RAISE,
  EXERCISE_TYPE_DUMBBELL_LATERAL_RAISE,
  EXERCISE_TYPE_DUMBBELL_TRICEPS_EXTENSION_LEFT_ARM,
  EXERCISE_TYPE_DUMBBELL_TRICEPS_EXTENSION_RIGHT_ARM,
  EXERCISE_TYPE_DUMBBELL_TRICEPS_EXTENSION_TWO_ARM,
  EXERCISE_TYPE_ELLIPTICAL,
  EXERCISE_TYPE_EXERCISE_CLASS,
  EXERCISE_TYPE_FENCING,
  EXERCISE_TYPE_FOOTBALL_AMERICAN,
  EXERCISE_TYPE_FOOTBALL_AUSTRALIAN,
  EXERCISE_TYPE_FORWARD_TWIST,
  EXERCISE_TYPE_FRISBEE_DISC,
  EXERCISE_TYPE_GOLF,
  EXERCISE_TYPE_GUIDED_BREATHING,
  EXERCISE_TYPE_GYMNASTICS,
  EXERCISE_TYPE_HANDBALL,
  EXERCISE_TYPE_HIGH_INTENSITY_INTERVAL_TRAINING,
  EXERCISE_TYPE_HIKING,
  EXERCISE_TYPE_ICE_HOCKEY,
  EXERCISE_TYPE_ICE_SKATING,
  EXERCISE_TYPE_JUMPING_JACK,
  EXERCISE_TYPE_JUMP_ROPE,
  EXERCISE_TYPE_LAT_PULL_DOWN,
  EXERCISE_TYPE_LUNGE,
  EXERCISE_TYPE_MARTIAL_ARTS,
  EXERCISE_TYPE_PADDLING,
  EXERCISE_TYPE_PARAGLIDING,
  EXERCISE_TYPE_PILATES,
  EXERCISE_TYPE_PLANK,
  EXERCISE_TYPE_RACQUETBALL,
  EXERCISE_TYPE_ROCK_CLIMBING,
  EXERCISE_TYPE_ROLLER_HOCKEY,
  EXERCISE_TYPE_ROWING,
  EXERCISE_TYPE_ROWING_MACHINE,
  EXERCISE_TYPE_RUGBY,
  EXERCISE_TYPE_RUNNING,
  EXERCISE_TYPE_RUNNING_TREADMILL,
  EXERCISE_TYPE_SAILING,
  EXERCISE_TYPE_SCUBA_DIVING,
  EXERCISE_TYPE_SKATING,
  EXERCISE_TYPE_SKIING,
  EXERCISE_TYPE_SNOWBOARDING,
  EXERCISE_TYPE_SNOWSHOEING,
  EXERCISE_TYPE_SOCCER,
  EXERCISE_TYPE_SOFTBALL,
  EXERCISE_TYPE_SQUASH,
  EXERCISE_TYPE_SQUAT,
  EXERCISE_TYPE_STAIR_CLIMBING,
  EXERCISE_TYPE_STAIR_CLIMBING_MACHINE,
  EXERCISE_TYPE_STRENGTH_TRAINING,
  EXERCISE_TYPE_STRETCHING,
  EXERCISE_TYPE_SURFING,
  EXERCISE_TYPE_SWIMMING_OPEN_WATER,
  EXERCISE_TYPE_SWIMMING_POOL,
  EXERCISE_TYPE_TABLE_TENNIS,
  EXERCISE_TYPE_TENNIS,
  EXERCISE_TYPE_UPPER_TWIST,
  EXERCISE_TYPE_VOLLEYBALL,
  EXERCISE_TYPE_WALKING,
  EXERCISE_TYPE_WATER_POLO,
  EXERCISE_TYPE_WEIGHTLIFTING,
  EXERCISE_TYPE_WHEELCHAIR,
  EXERCISE_TYPE_OTHER_WORKOUT,
  EXERCISE_TYPE_YOGA,
}

enum RecordClass {
  ActiveCaloriesBurnedRead,
  BasalBodyTemperatureRead,
  BasalMetabolicRateRead,
  BloodGlucoseRead,
  BloodPressureRead,
  BodyFatRead,
  BodyTemperatureRead,
  BodyWaterMassRead,
  BoneMassRead,
  CervicalMucusRead,
  CyclingPedalingCadenceSeriesRead,
  DistanceRead,
  ElevationGainedRead,
  ExerciseSessionRead,
  FloorsClimbedRead,
  HeartRateSeriesRead,
  HeartRateVariabilityRmssdRead,
  HeightRead,
  HydrationRead,
  LeanBodyMassRead,
  MenstruationFlowRead,
  MenstruationPeriodRead,
  NutritionRead,
  OvulationTestRead,
  OxygenSaturationRead,
  PowerSeriesRead,
  RespiratoryRateRead,
  RestingHeartRateRead,
  SexualActivityRead,
  SleepSessionRead,
  SleepStageRead,
  SpeedSeriesRead,
  StepsCadenceSeriesRead,
  StepsRead,
  TotalCaloriesBurnedRead,
  Vo2MaxRead,
  WeightRead,
  WheelchairPushesRead,

  ActiveCaloriesBurnedWrite,
  BasalBodyTemperatureWrite,
  BasalMetabolicRateWrite,
  BloodGlucoseWrite,
  BloodPressureWrite,
  BodyFatWrite,
  BodyTemperatureWrite,
  BodyWaterMassWrite,
  BoneMassWrite,
  CervicalMucusWrite,
  CyclingPedalingCadenceSeriesWrite,
  DistanceWrite,
  ElevationGainedWrite,
  ExerciseSessionWrite,
  FloorsClimbedWrite,
  HeartRateSeriesWrite,
  HeartRateVariabilityRmssdWrite,
  HeightWrite,
  HydrationWrite,
  LeanBodyMassWrite,
  MenstruationFlowWrite,
  MenstruationPeriodWrite,
  NutritionWrite,
  OvulationTestWrite,
  OxygenSaturationWrite,
  PowerSeriesWrite,
  RespiratoryRateWrite,
  RestingHeartRateWrite,
  SexualActivityWrite,
  SleepSessionWrite,
  SleepStageWrite,
  SpeedSeriesWrite,
  StepsCadenceSeriesWrite,
  StepsWrite,
  TotalCaloriesBurnedWrite,
  Vo2MaxWrite,
  WeightWrite,
  WheelchairPushesWrite
}
