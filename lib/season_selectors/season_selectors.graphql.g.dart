// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_selectors.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Fragment$SeasonSelectors _$Variables$Fragment$SeasonSelectorsFromJson(
        Map<String, dynamic> json) =>
    Variables$Fragment$SeasonSelectors(
      season: $enumDecodeNullable(_$Enum$MediaSeasonEnumMap, json['season'],
          unknownValue: Enum$MediaSeason.$unknown),
      seasonYear: json['seasonYear'] as int?,
    );

Map<String, dynamic> _$Variables$Fragment$SeasonSelectorsToJson(
        Variables$Fragment$SeasonSelectors instance) =>
    <String, dynamic>{
      'season': _$Enum$MediaSeasonEnumMap[instance.season],
      'seasonYear': instance.seasonYear,
    };

const _$Enum$MediaSeasonEnumMap = {
  Enum$MediaSeason.WINTER: 'WINTER',
  Enum$MediaSeason.SPRING: 'SPRING',
  Enum$MediaSeason.SUMMER: 'SUMMER',
  Enum$MediaSeason.FALL: 'FALL',
  Enum$MediaSeason.$unknown: r'$unknown',
};

Fragment$SeasonSelectors _$Fragment$SeasonSelectorsFromJson(
        Map<String, dynamic> json) =>
    Fragment$SeasonSelectors(
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$SeasonSelectors$media.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$SeasonSelectorsToJson(
        Fragment$SeasonSelectors instance) =>
    <String, dynamic>{
      'media': instance.media?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Fragment$SeasonSelectors$media _$Fragment$SeasonSelectors$mediaFromJson(
        Map<String, dynamic> json) =>
    Fragment$SeasonSelectors$media(
      season: $enumDecodeNullable(_$Enum$MediaSeasonEnumMap, json['season'],
          unknownValue: Enum$MediaSeason.$unknown),
      seasonYear: json['seasonYear'] as int?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$SeasonSelectors$mediaToJson(
        Fragment$SeasonSelectors$media instance) =>
    <String, dynamic>{
      'season': _$Enum$MediaSeasonEnumMap[instance.season],
      'seasonYear': instance.seasonYear,
      '__typename': instance.$__typename,
    };
