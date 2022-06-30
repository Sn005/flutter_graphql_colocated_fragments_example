// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Query$HomePage _$Variables$Query$HomePageFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$HomePage(
      season: $enumDecodeNullable(_$Enum$MediaSeasonEnumMap, json['season'],
          unknownValue: Enum$MediaSeason.$unknown),
      seasonYear: json['seasonYear'] as int?,
    );

Map<String, dynamic> _$Variables$Query$HomePageToJson(
        Variables$Query$HomePage instance) =>
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

Query$HomePage _$Query$HomePageFromJson(Map<String, dynamic> json) =>
    Query$HomePage(
      Page: json['Page'] == null
          ? null
          : Query$HomePage$Page.fromJson(json['Page'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HomePageToJson(Query$HomePage instance) =>
    <String, dynamic>{
      'Page': instance.Page?.toJson(),
      '__typename': instance.$__typename,
    };

Query$HomePage$Page _$Query$HomePage$PageFromJson(Map<String, dynamic> json) =>
    Query$HomePage$Page(
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$HomePage$Page$media.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HomePage$PageToJson(
        Query$HomePage$Page instance) =>
    <String, dynamic>{
      'media': instance.media?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$HomePage$Page$media _$Query$HomePage$Page$mediaFromJson(
        Map<String, dynamic> json) =>
    Query$HomePage$Page$media(
      season: $enumDecodeNullable(_$Enum$MediaSeasonEnumMap, json['season'],
          unknownValue: Enum$MediaSeason.$unknown),
      seasonYear: json['seasonYear'] as int?,
      $__typename: json['__typename'] as String,
      title: json['title'] == null
          ? null
          : Query$HomePage$Page$media$title.fromJson(
              json['title'] as Map<String, dynamic>),
      coverImage: json['coverImage'] == null
          ? null
          : Query$HomePage$Page$media$coverImage.fromJson(
              json['coverImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Query$HomePage$Page$mediaToJson(
        Query$HomePage$Page$media instance) =>
    <String, dynamic>{
      'season': _$Enum$MediaSeasonEnumMap[instance.season],
      'seasonYear': instance.seasonYear,
      '__typename': instance.$__typename,
      'title': instance.title?.toJson(),
      'coverImage': instance.coverImage?.toJson(),
    };

Query$HomePage$Page$media$title _$Query$HomePage$Page$media$titleFromJson(
        Map<String, dynamic> json) =>
    Query$HomePage$Page$media$title(
      native: json['native'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$HomePage$Page$media$titleToJson(
        Query$HomePage$Page$media$title instance) =>
    <String, dynamic>{
      'native': instance.native,
      '__typename': instance.$__typename,
    };

Query$HomePage$Page$media$coverImage
    _$Query$HomePage$Page$media$coverImageFromJson(Map<String, dynamic> json) =>
        Query$HomePage$Page$media$coverImage(
          extraLarge: json['extraLarge'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$HomePage$Page$media$coverImageToJson(
        Query$HomePage$Page$media$coverImage instance) =>
    <String, dynamic>{
      'extraLarge': instance.extraLarge,
      '__typename': instance.$__typename,
    };
