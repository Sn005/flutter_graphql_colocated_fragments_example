// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_screens.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Query$SearchScreens _$Variables$Query$SearchScreensFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$SearchScreens(
      season: $enumDecodeNullable(_$Enum$MediaSeasonEnumMap, json['season'],
          unknownValue: Enum$MediaSeason.$unknown),
      seasonYear: json['seasonYear'] as int?,
    );

Map<String, dynamic> _$Variables$Query$SearchScreensToJson(
        Variables$Query$SearchScreens instance) =>
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

Query$SearchScreens _$Query$SearchScreensFromJson(Map<String, dynamic> json) =>
    Query$SearchScreens(
      Page: json['Page'] == null
          ? null
          : Query$SearchScreens$Page.fromJson(
              json['Page'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchScreensToJson(
        Query$SearchScreens instance) =>
    <String, dynamic>{
      'Page': instance.Page?.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchScreens$Page _$Query$SearchScreens$PageFromJson(
        Map<String, dynamic> json) =>
    Query$SearchScreens$Page(
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$SearchScreens$Page$media.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchScreens$PageToJson(
        Query$SearchScreens$Page instance) =>
    <String, dynamic>{
      'media': instance.media?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$SearchScreens$Page$media _$Query$SearchScreens$Page$mediaFromJson(
        Map<String, dynamic> json) =>
    Query$SearchScreens$Page$media(
      season: $enumDecodeNullable(_$Enum$MediaSeasonEnumMap, json['season'],
          unknownValue: Enum$MediaSeason.$unknown),
      seasonYear: json['seasonYear'] as int?,
      $__typename: json['__typename'] as String,
      title: json['title'] == null
          ? null
          : Query$SearchScreens$Page$media$title.fromJson(
              json['title'] as Map<String, dynamic>),
      coverImage: json['coverImage'] == null
          ? null
          : Query$SearchScreens$Page$media$coverImage.fromJson(
              json['coverImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Query$SearchScreens$Page$mediaToJson(
        Query$SearchScreens$Page$media instance) =>
    <String, dynamic>{
      'season': _$Enum$MediaSeasonEnumMap[instance.season],
      'seasonYear': instance.seasonYear,
      '__typename': instance.$__typename,
      'title': instance.title?.toJson(),
      'coverImage': instance.coverImage?.toJson(),
    };

Query$SearchScreens$Page$media$title
    _$Query$SearchScreens$Page$media$titleFromJson(Map<String, dynamic> json) =>
        Query$SearchScreens$Page$media$title(
          native: json['native'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchScreens$Page$media$titleToJson(
        Query$SearchScreens$Page$media$title instance) =>
    <String, dynamic>{
      'native': instance.native,
      '__typename': instance.$__typename,
    };

Query$SearchScreens$Page$media$coverImage
    _$Query$SearchScreens$Page$media$coverImageFromJson(
            Map<String, dynamic> json) =>
        Query$SearchScreens$Page$media$coverImage(
          extraLarge: json['extraLarge'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchScreens$Page$media$coverImageToJson(
        Query$SearchScreens$Page$media$coverImage instance) =>
    <String, dynamic>{
      'extraLarge': instance.extraLarge,
      '__typename': instance.$__typename,
    };
