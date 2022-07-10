// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_screen.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Query$SearchScreen _$Variables$Query$SearchScreenFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$SearchScreen(
      season: $enumDecodeNullable(_$Enum$MediaSeasonEnumMap, json['season'],
          unknownValue: Enum$MediaSeason.$unknown),
      seasonYear: json['seasonYear'] as int?,
    );

Map<String, dynamic> _$Variables$Query$SearchScreenToJson(
        Variables$Query$SearchScreen instance) =>
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

Query$SearchScreen _$Query$SearchScreenFromJson(Map<String, dynamic> json) =>
    Query$SearchScreen(
      Page: json['Page'] == null
          ? null
          : Query$SearchScreen$Page.fromJson(
              json['Page'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchScreenToJson(Query$SearchScreen instance) =>
    <String, dynamic>{
      'Page': instance.Page?.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchScreen$Page _$Query$SearchScreen$PageFromJson(
        Map<String, dynamic> json) =>
    Query$SearchScreen$Page(
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$SearchScreen$Page$media.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchScreen$PageToJson(
        Query$SearchScreen$Page instance) =>
    <String, dynamic>{
      'media': instance.media?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$SearchScreen$Page$media _$Query$SearchScreen$Page$mediaFromJson(
        Map<String, dynamic> json) =>
    Query$SearchScreen$Page$media(
      title: json['title'] == null
          ? null
          : Query$SearchScreen$Page$media$title.fromJson(
              json['title'] as Map<String, dynamic>),
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      coverImage: json['coverImage'] == null
          ? null
          : Query$SearchScreen$Page$media$coverImage.fromJson(
              json['coverImage'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchScreen$Page$mediaToJson(
        Query$SearchScreen$Page$media instance) =>
    <String, dynamic>{
      'title': instance.title?.toJson(),
      'genres': instance.genres,
      'coverImage': instance.coverImage?.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchScreen$Page$media$title
    _$Query$SearchScreen$Page$media$titleFromJson(Map<String, dynamic> json) =>
        Query$SearchScreen$Page$media$title(
          native: json['native'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchScreen$Page$media$titleToJson(
        Query$SearchScreen$Page$media$title instance) =>
    <String, dynamic>{
      'native': instance.native,
      '__typename': instance.$__typename,
    };

Query$SearchScreen$Page$media$coverImage
    _$Query$SearchScreen$Page$media$coverImageFromJson(
            Map<String, dynamic> json) =>
        Query$SearchScreen$Page$media$coverImage(
          large: json['large'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchScreen$Page$media$coverImageToJson(
        Query$SearchScreen$Page$media$coverImage instance) =>
    <String, dynamic>{
      'large': instance.large,
      '__typename': instance.$__typename,
    };
