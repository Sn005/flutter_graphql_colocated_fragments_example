// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fragments.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variables$Fragment$MediaList _$Variables$Fragment$MediaListFromJson(
        Map<String, dynamic> json) =>
    Variables$Fragment$MediaList(
      season: $enumDecodeNullable(_$Enum$MediaSeasonEnumMap, json['season'],
          unknownValue: Enum$MediaSeason.$unknown),
      seasonYear: json['seasonYear'] as int?,
    );

Map<String, dynamic> _$Variables$Fragment$MediaListToJson(
        Variables$Fragment$MediaList instance) =>
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

Fragment$MediaList _$Fragment$MediaListFromJson(Map<String, dynamic> json) =>
    Fragment$MediaList(
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaList$media.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$MediaListToJson(Fragment$MediaList instance) =>
    <String, dynamic>{
      'media': instance.media?.map((e) => e?.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Fragment$MediaList$media _$Fragment$MediaList$mediaFromJson(
        Map<String, dynamic> json) =>
    Fragment$MediaList$media(
      title: json['title'] == null
          ? null
          : Fragment$MediaList$media$title.fromJson(
              json['title'] as Map<String, dynamic>),
      coverImage: json['coverImage'] == null
          ? null
          : Fragment$MediaList$media$coverImage.fromJson(
              json['coverImage'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$MediaList$mediaToJson(
        Fragment$MediaList$media instance) =>
    <String, dynamic>{
      'title': instance.title?.toJson(),
      'coverImage': instance.coverImage?.toJson(),
      '__typename': instance.$__typename,
    };

Fragment$MediaList$media$title _$Fragment$MediaList$media$titleFromJson(
        Map<String, dynamic> json) =>
    Fragment$MediaList$media$title(
      native: json['native'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$MediaList$media$titleToJson(
        Fragment$MediaList$media$title instance) =>
    <String, dynamic>{
      'native': instance.native,
      '__typename': instance.$__typename,
    };

Fragment$MediaList$media$coverImage
    _$Fragment$MediaList$media$coverImageFromJson(Map<String, dynamic> json) =>
        Fragment$MediaList$media$coverImage(
          extraLarge: json['extraLarge'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Fragment$MediaList$media$coverImageToJson(
        Fragment$MediaList$media$coverImage instance) =>
    <String, dynamic>{
      'extraLarge': instance.extraLarge,
      '__typename': instance.$__typename,
    };

Fragment$MediaListItem _$Fragment$MediaListItemFromJson(
        Map<String, dynamic> json) =>
    Fragment$MediaListItem(
      title: json['title'] == null
          ? null
          : Fragment$MediaListItem$title.fromJson(
              json['title'] as Map<String, dynamic>),
      coverImage: json['coverImage'] == null
          ? null
          : Fragment$MediaListItem$coverImage.fromJson(
              json['coverImage'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$MediaListItemToJson(
        Fragment$MediaListItem instance) =>
    <String, dynamic>{
      'title': instance.title?.toJson(),
      'coverImage': instance.coverImage?.toJson(),
      '__typename': instance.$__typename,
    };

Fragment$MediaListItem$title _$Fragment$MediaListItem$titleFromJson(
        Map<String, dynamic> json) =>
    Fragment$MediaListItem$title(
      native: json['native'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$MediaListItem$titleToJson(
        Fragment$MediaListItem$title instance) =>
    <String, dynamic>{
      'native': instance.native,
      '__typename': instance.$__typename,
    };

Fragment$MediaListItem$coverImage _$Fragment$MediaListItem$coverImageFromJson(
        Map<String, dynamic> json) =>
    Fragment$MediaListItem$coverImage(
      extraLarge: json['extraLarge'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$MediaListItem$coverImageToJson(
        Fragment$MediaListItem$coverImage instance) =>
    <String, dynamic>{
      'extraLarge': instance.extraLarge,
      '__typename': instance.$__typename,
    };
