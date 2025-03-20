// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prayer_time_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PrayerTimes _$PrayerTimesFromJson(Map<String, dynamic> json) {
  return _PrayerTimes.fromJson(json);
}

/// @nodoc
mixin _$PrayerTimes {
  String get fajr => throw _privateConstructorUsedError;
  String get dhuhr => throw _privateConstructorUsedError;
  String get asr => throw _privateConstructorUsedError;
  String get maghrib => throw _privateConstructorUsedError;
  String get isha => throw _privateConstructorUsedError;

  /// Serializes this PrayerTimes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrayerTimes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrayerTimesCopyWith<PrayerTimes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerTimesCopyWith<$Res> {
  factory $PrayerTimesCopyWith(
    PrayerTimes value,
    $Res Function(PrayerTimes) then,
  ) = _$PrayerTimesCopyWithImpl<$Res, PrayerTimes>;
  @useResult
  $Res call({
    String fajr,
    String dhuhr,
    String asr,
    String maghrib,
    String isha,
  });
}

/// @nodoc
class _$PrayerTimesCopyWithImpl<$Res, $Val extends PrayerTimes>
    implements $PrayerTimesCopyWith<$Res> {
  _$PrayerTimesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrayerTimes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fajr = null,
    Object? dhuhr = null,
    Object? asr = null,
    Object? maghrib = null,
    Object? isha = null,
  }) {
    return _then(
      _value.copyWith(
            fajr:
                null == fajr
                    ? _value.fajr
                    : fajr // ignore: cast_nullable_to_non_nullable
                        as String,
            dhuhr:
                null == dhuhr
                    ? _value.dhuhr
                    : dhuhr // ignore: cast_nullable_to_non_nullable
                        as String,
            asr:
                null == asr
                    ? _value.asr
                    : asr // ignore: cast_nullable_to_non_nullable
                        as String,
            maghrib:
                null == maghrib
                    ? _value.maghrib
                    : maghrib // ignore: cast_nullable_to_non_nullable
                        as String,
            isha:
                null == isha
                    ? _value.isha
                    : isha // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PrayerTimesImplCopyWith<$Res>
    implements $PrayerTimesCopyWith<$Res> {
  factory _$$PrayerTimesImplCopyWith(
    _$PrayerTimesImpl value,
    $Res Function(_$PrayerTimesImpl) then,
  ) = __$$PrayerTimesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String fajr,
    String dhuhr,
    String asr,
    String maghrib,
    String isha,
  });
}

/// @nodoc
class __$$PrayerTimesImplCopyWithImpl<$Res>
    extends _$PrayerTimesCopyWithImpl<$Res, _$PrayerTimesImpl>
    implements _$$PrayerTimesImplCopyWith<$Res> {
  __$$PrayerTimesImplCopyWithImpl(
    _$PrayerTimesImpl _value,
    $Res Function(_$PrayerTimesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PrayerTimes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fajr = null,
    Object? dhuhr = null,
    Object? asr = null,
    Object? maghrib = null,
    Object? isha = null,
  }) {
    return _then(
      _$PrayerTimesImpl(
        fajr:
            null == fajr
                ? _value.fajr
                : fajr // ignore: cast_nullable_to_non_nullable
                    as String,
        dhuhr:
            null == dhuhr
                ? _value.dhuhr
                : dhuhr // ignore: cast_nullable_to_non_nullable
                    as String,
        asr:
            null == asr
                ? _value.asr
                : asr // ignore: cast_nullable_to_non_nullable
                    as String,
        maghrib:
            null == maghrib
                ? _value.maghrib
                : maghrib // ignore: cast_nullable_to_non_nullable
                    as String,
        isha:
            null == isha
                ? _value.isha
                : isha // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerTimesImpl implements _PrayerTimes {
  const _$PrayerTimesImpl({
    required this.fajr,
    required this.dhuhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
  });

  factory _$PrayerTimesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerTimesImplFromJson(json);

  @override
  final String fajr;
  @override
  final String dhuhr;
  @override
  final String asr;
  @override
  final String maghrib;
  @override
  final String isha;

  @override
  String toString() {
    return 'PrayerTimes(fajr: $fajr, dhuhr: $dhuhr, asr: $asr, maghrib: $maghrib, isha: $isha)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerTimesImpl &&
            (identical(other.fajr, fajr) || other.fajr == fajr) &&
            (identical(other.dhuhr, dhuhr) || other.dhuhr == dhuhr) &&
            (identical(other.asr, asr) || other.asr == asr) &&
            (identical(other.maghrib, maghrib) || other.maghrib == maghrib) &&
            (identical(other.isha, isha) || other.isha == isha));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fajr, dhuhr, asr, maghrib, isha);

  /// Create a copy of PrayerTimes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerTimesImplCopyWith<_$PrayerTimesImpl> get copyWith =>
      __$$PrayerTimesImplCopyWithImpl<_$PrayerTimesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerTimesImplToJson(this);
  }
}

abstract class _PrayerTimes implements PrayerTimes {
  const factory _PrayerTimes({
    required final String fajr,
    required final String dhuhr,
    required final String asr,
    required final String maghrib,
    required final String isha,
  }) = _$PrayerTimesImpl;

  factory _PrayerTimes.fromJson(Map<String, dynamic> json) =
      _$PrayerTimesImpl.fromJson;

  @override
  String get fajr;
  @override
  String get dhuhr;
  @override
  String get asr;
  @override
  String get maghrib;
  @override
  String get isha;

  /// Create a copy of PrayerTimes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrayerTimesImplCopyWith<_$PrayerTimesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
