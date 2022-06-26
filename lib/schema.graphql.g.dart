// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Input$AiringScheduleInput _$Input$AiringScheduleInputFromJson(
        Map<String, dynamic> json) =>
    Input$AiringScheduleInput(
      airingAt: json['airingAt'] as int?,
      episode: json['episode'] as int?,
      timeUntilAiring: json['timeUntilAiring'] as int?,
    );

Map<String, dynamic> _$Input$AiringScheduleInputToJson(
        Input$AiringScheduleInput instance) =>
    <String, dynamic>{
      'airingAt': instance.airingAt,
      'episode': instance.episode,
      'timeUntilAiring': instance.timeUntilAiring,
    };

Input$AniChartHighlightInput _$Input$AniChartHighlightInputFromJson(
        Map<String, dynamic> json) =>
    Input$AniChartHighlightInput(
      mediaId: json['mediaId'] as int?,
      highlight: json['highlight'] as String?,
    );

Map<String, dynamic> _$Input$AniChartHighlightInputToJson(
        Input$AniChartHighlightInput instance) =>
    <String, dynamic>{
      'mediaId': instance.mediaId,
      'highlight': instance.highlight,
    };

Input$CharacterNameInput _$Input$CharacterNameInputFromJson(
        Map<String, dynamic> json) =>
    Input$CharacterNameInput(
      first: json['first'] as String?,
      middle: json['middle'] as String?,
      last: json['last'] as String?,
      native: json['native'] as String?,
      alternative: (json['alternative'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      alternativeSpoiler: (json['alternativeSpoiler'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$Input$CharacterNameInputToJson(
        Input$CharacterNameInput instance) =>
    <String, dynamic>{
      'first': instance.first,
      'middle': instance.middle,
      'last': instance.last,
      'native': instance.native,
      'alternative': instance.alternative,
      'alternativeSpoiler': instance.alternativeSpoiler,
    };

Input$FuzzyDateInput _$Input$FuzzyDateInputFromJson(
        Map<String, dynamic> json) =>
    Input$FuzzyDateInput(
      year: json['year'] as int?,
      month: json['month'] as int?,
      day: json['day'] as int?,
    );

Map<String, dynamic> _$Input$FuzzyDateInputToJson(
        Input$FuzzyDateInput instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
    };

Input$ListActivityOptionInput _$Input$ListActivityOptionInputFromJson(
        Map<String, dynamic> json) =>
    Input$ListActivityOptionInput(
      disabled: json['disabled'] as bool?,
      type: $enumDecodeNullable(_$Enum$MediaListStatusEnumMap, json['type'],
          unknownValue: Enum$MediaListStatus.$unknown),
    );

Map<String, dynamic> _$Input$ListActivityOptionInputToJson(
        Input$ListActivityOptionInput instance) =>
    <String, dynamic>{
      'disabled': instance.disabled,
      'type': _$Enum$MediaListStatusEnumMap[instance.type],
    };

const _$Enum$MediaListStatusEnumMap = {
  Enum$MediaListStatus.CURRENT: 'CURRENT',
  Enum$MediaListStatus.PLANNING: 'PLANNING',
  Enum$MediaListStatus.COMPLETED: 'COMPLETED',
  Enum$MediaListStatus.DROPPED: 'DROPPED',
  Enum$MediaListStatus.PAUSED: 'PAUSED',
  Enum$MediaListStatus.REPEATING: 'REPEATING',
  Enum$MediaListStatus.$unknown: r'$unknown',
};

Input$MediaExternalLinkInput _$Input$MediaExternalLinkInputFromJson(
        Map<String, dynamic> json) =>
    Input$MediaExternalLinkInput(
      id: json['id'] as int,
      url: json['url'] as String,
      site: json['site'] as String,
    );

Map<String, dynamic> _$Input$MediaExternalLinkInputToJson(
        Input$MediaExternalLinkInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'site': instance.site,
    };

Input$MediaListOptionsInput _$Input$MediaListOptionsInputFromJson(
        Map<String, dynamic> json) =>
    Input$MediaListOptionsInput(
      sectionOrder: (json['sectionOrder'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      splitCompletedSectionByFormat:
          json['splitCompletedSectionByFormat'] as bool?,
      customLists: (json['customLists'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      advancedScoring: (json['advancedScoring'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      advancedScoringEnabled: json['advancedScoringEnabled'] as bool?,
      theme: json['theme'] as String?,
    );

Map<String, dynamic> _$Input$MediaListOptionsInputToJson(
        Input$MediaListOptionsInput instance) =>
    <String, dynamic>{
      'sectionOrder': instance.sectionOrder,
      'splitCompletedSectionByFormat': instance.splitCompletedSectionByFormat,
      'customLists': instance.customLists,
      'advancedScoring': instance.advancedScoring,
      'advancedScoringEnabled': instance.advancedScoringEnabled,
      'theme': instance.theme,
    };

Input$MediaTitleInput _$Input$MediaTitleInputFromJson(
        Map<String, dynamic> json) =>
    Input$MediaTitleInput(
      romaji: json['romaji'] as String?,
      english: json['english'] as String?,
      native: json['native'] as String?,
    );

Map<String, dynamic> _$Input$MediaTitleInputToJson(
        Input$MediaTitleInput instance) =>
    <String, dynamic>{
      'romaji': instance.romaji,
      'english': instance.english,
      'native': instance.native,
    };

Input$NotificationOptionInput _$Input$NotificationOptionInputFromJson(
        Map<String, dynamic> json) =>
    Input$NotificationOptionInput(
      type: $enumDecodeNullable(_$Enum$NotificationTypeEnumMap, json['type'],
          unknownValue: Enum$NotificationType.$unknown),
      enabled: json['enabled'] as bool?,
    );

Map<String, dynamic> _$Input$NotificationOptionInputToJson(
        Input$NotificationOptionInput instance) =>
    <String, dynamic>{
      'type': _$Enum$NotificationTypeEnumMap[instance.type],
      'enabled': instance.enabled,
    };

const _$Enum$NotificationTypeEnumMap = {
  Enum$NotificationType.ACTIVITY_MESSAGE: 'ACTIVITY_MESSAGE',
  Enum$NotificationType.ACTIVITY_REPLY: 'ACTIVITY_REPLY',
  Enum$NotificationType.FOLLOWING: 'FOLLOWING',
  Enum$NotificationType.ACTIVITY_MENTION: 'ACTIVITY_MENTION',
  Enum$NotificationType.THREAD_COMMENT_MENTION: 'THREAD_COMMENT_MENTION',
  Enum$NotificationType.THREAD_SUBSCRIBED: 'THREAD_SUBSCRIBED',
  Enum$NotificationType.THREAD_COMMENT_REPLY: 'THREAD_COMMENT_REPLY',
  Enum$NotificationType.AIRING: 'AIRING',
  Enum$NotificationType.ACTIVITY_LIKE: 'ACTIVITY_LIKE',
  Enum$NotificationType.ACTIVITY_REPLY_LIKE: 'ACTIVITY_REPLY_LIKE',
  Enum$NotificationType.THREAD_LIKE: 'THREAD_LIKE',
  Enum$NotificationType.THREAD_COMMENT_LIKE: 'THREAD_COMMENT_LIKE',
  Enum$NotificationType.ACTIVITY_REPLY_SUBSCRIBED: 'ACTIVITY_REPLY_SUBSCRIBED',
  Enum$NotificationType.RELATED_MEDIA_ADDITION: 'RELATED_MEDIA_ADDITION',
  Enum$NotificationType.MEDIA_DATA_CHANGE: 'MEDIA_DATA_CHANGE',
  Enum$NotificationType.MEDIA_MERGE: 'MEDIA_MERGE',
  Enum$NotificationType.MEDIA_DELETION: 'MEDIA_DELETION',
  Enum$NotificationType.$unknown: r'$unknown',
};

Input$StaffNameInput _$Input$StaffNameInputFromJson(
        Map<String, dynamic> json) =>
    Input$StaffNameInput(
      first: json['first'] as String?,
      middle: json['middle'] as String?,
      last: json['last'] as String?,
      native: json['native'] as String?,
      alternative: (json['alternative'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$Input$StaffNameInputToJson(
        Input$StaffNameInput instance) =>
    <String, dynamic>{
      'first': instance.first,
      'middle': instance.middle,
      'last': instance.last,
      'native': instance.native,
      'alternative': instance.alternative,
    };
