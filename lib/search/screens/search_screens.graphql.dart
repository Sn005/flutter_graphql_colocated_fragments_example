import '../../schema.graphql.dart';
import '../../season_selectors/season_selectors.graphql.dart';
import '../widgets/media_list/media_list.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'search_screens.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Query$SearchScreens {
  Variables$Query$SearchScreens({this.season, this.seasonYear});

  @override
  factory Variables$Query$SearchScreens.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$SearchScreensFromJson(json);

  @JsonKey(unknownEnumValue: Enum$MediaSeason.$unknown)
  final Enum$MediaSeason? season;

  final int? seasonYear;

  Map<String, dynamic> toJson() => _$Variables$Query$SearchScreensToJson(this);
  int get hashCode {
    final l$season = season;
    final l$seasonYear = seasonYear;
    return Object.hashAll([l$season, l$seasonYear]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$SearchScreens) ||
        runtimeType != other.runtimeType) return false;
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) return false;
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (l$seasonYear != lOther$seasonYear) return false;
    return true;
  }

  Variables$Query$SearchScreens copyWith(
          {Enum$MediaSeason? Function()? season,
          int? Function()? seasonYear}) =>
      Variables$Query$SearchScreens(
          season: season == null ? this.season : season(),
          seasonYear: seasonYear == null ? this.seasonYear : seasonYear());
}

@JsonSerializable(explicitToJson: true)
class Query$SearchScreens {
  Query$SearchScreens({this.Page, required this.$__typename});

  @override
  factory Query$SearchScreens.fromJson(Map<String, dynamic> json) =>
      _$Query$SearchScreensFromJson(json);

  final Query$SearchScreens$Page? Page;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$SearchScreensToJson(this);
  int get hashCode {
    final l$Page = Page;
    final l$$__typename = $__typename;
    return Object.hashAll([l$Page, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchScreens) || runtimeType != other.runtimeType)
      return false;
    final l$Page = Page;
    final lOther$Page = other.Page;
    if (l$Page != lOther$Page) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$SearchScreens on Query$SearchScreens {
  Query$SearchScreens copyWith(
          {Query$SearchScreens$Page? Function()? Page, String? $__typename}) =>
      Query$SearchScreens(
          Page: Page == null ? this.Page : Page(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const documentNodeQuerySearchScreens = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchScreens'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'season')),
            type: NamedTypeNode(
                name: NameNode(value: 'MediaSeason'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'seasonYear')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'Page'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'SeasonSelectors'), directives: []),
              FragmentSpreadNode(
                  name: NameNode(value: 'MediaList'), directives: []),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  fragmentDefinitionSeasonSelectors,
  fragmentDefinitionMediaList,
  fragmentDefinitionMediaListItem,
]);
Query$SearchScreens _parserFn$Query$SearchScreens(Map<String, dynamic> data) =>
    Query$SearchScreens.fromJson(data);

class Options$Query$SearchScreens
    extends graphql.QueryOptions<Query$SearchScreens> {
  Options$Query$SearchScreens(
      {String? operationName,
      Variables$Query$SearchScreens? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQuerySearchScreens,
            parserFn: _parserFn$Query$SearchScreens);
}

class WatchOptions$Query$SearchScreens
    extends graphql.WatchQueryOptions<Query$SearchScreens> {
  WatchOptions$Query$SearchScreens(
      {String? operationName,
      Variables$Query$SearchScreens? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeQuerySearchScreens,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$SearchScreens);
}

class FetchMoreOptions$Query$SearchScreens extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchScreens(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$SearchScreens? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQuerySearchScreens);
}

extension ClientExtension$Query$SearchScreens on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchScreens>> query$SearchScreens(
          [Options$Query$SearchScreens? options]) async =>
      await this.query(options ?? Options$Query$SearchScreens());
  graphql.ObservableQuery<Query$SearchScreens> watchQuery$SearchScreens(
          [WatchOptions$Query$SearchScreens? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$SearchScreens());
  void writeQuery$SearchScreens(
          {required Query$SearchScreens data,
          Variables$Query$SearchScreens? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQuerySearchScreens),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$SearchScreens? readQuery$SearchScreens(
      {Variables$Query$SearchScreens? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQuerySearchScreens),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$SearchScreens.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SearchScreens> useQuery$SearchScreens(
        [Options$Query$SearchScreens? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$SearchScreens());
graphql.ObservableQuery<Query$SearchScreens> useWatchQuery$SearchScreens(
        [WatchOptions$Query$SearchScreens? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$SearchScreens());

class Query$SearchScreens$Widget
    extends graphql_flutter.Query<Query$SearchScreens> {
  Query$SearchScreens$Widget(
      {widgets.Key? key,
      Options$Query$SearchScreens? options,
      required graphql_flutter.QueryBuilder<Query$SearchScreens> builder})
      : super(
            key: key,
            options: options ?? Options$Query$SearchScreens(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$SearchScreens$Page
    implements Fragment$SeasonSelectors, Fragment$MediaList {
  Query$SearchScreens$Page({this.media, required this.$__typename});

  @override
  factory Query$SearchScreens$Page.fromJson(Map<String, dynamic> json) =>
      _$Query$SearchScreens$PageFromJson(json);

  final List<Query$SearchScreens$Page$media?>? media;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$SearchScreens$PageToJson(this);
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchScreens$Page) ||
        runtimeType != other.runtimeType) return false;
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) return false;
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) return false;
      }
    } else if (l$media != lOther$media) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$SearchScreens$Page
    on Query$SearchScreens$Page {
  Query$SearchScreens$Page copyWith(
          {List<Query$SearchScreens$Page$media?>? Function()? media,
          String? $__typename}) =>
      Query$SearchScreens$Page(
          media: media == null ? this.media : media(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$SearchScreens$Page$media
    implements
        Fragment$SeasonSelectors$media,
        Fragment$MediaList$media,
        Fragment$MediaListItem {
  Query$SearchScreens$Page$media(
      {this.season,
      this.seasonYear,
      required this.$__typename,
      this.title,
      this.coverImage});

  @override
  factory Query$SearchScreens$Page$media.fromJson(Map<String, dynamic> json) =>
      _$Query$SearchScreens$Page$mediaFromJson(json);

  @JsonKey(unknownEnumValue: Enum$MediaSeason.$unknown)
  final Enum$MediaSeason? season;

  final int? seasonYear;

  @JsonKey(name: '__typename')
  final String $__typename;

  final Query$SearchScreens$Page$media$title? title;

  final Query$SearchScreens$Page$media$coverImage? coverImage;

  Map<String, dynamic> toJson() => _$Query$SearchScreens$Page$mediaToJson(this);
  int get hashCode {
    final l$season = season;
    final l$seasonYear = seasonYear;
    final l$$__typename = $__typename;
    final l$title = title;
    final l$coverImage = coverImage;
    return Object.hashAll(
        [l$season, l$seasonYear, l$$__typename, l$title, l$coverImage]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchScreens$Page$media) ||
        runtimeType != other.runtimeType) return false;
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) return false;
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (l$seasonYear != lOther$seasonYear) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) return false;
    return true;
  }
}

extension UtilityExtension$Query$SearchScreens$Page$media
    on Query$SearchScreens$Page$media {
  Query$SearchScreens$Page$media copyWith(
          {Enum$MediaSeason? Function()? season,
          int? Function()? seasonYear,
          String? $__typename,
          Query$SearchScreens$Page$media$title? Function()? title,
          Query$SearchScreens$Page$media$coverImage? Function()? coverImage}) =>
      Query$SearchScreens$Page$media(
          season: season == null ? this.season : season(),
          seasonYear: seasonYear == null ? this.seasonYear : seasonYear(),
          $__typename: $__typename == null ? this.$__typename : $__typename,
          title: title == null ? this.title : title(),
          coverImage: coverImage == null ? this.coverImage : coverImage());
}

@JsonSerializable(explicitToJson: true)
class Query$SearchScreens$Page$media$title
    implements Fragment$MediaList$media$title, Fragment$MediaListItem$title {
  Query$SearchScreens$Page$media$title(
      {this.native, required this.$__typename});

  @override
  factory Query$SearchScreens$Page$media$title.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchScreens$Page$media$titleFromJson(json);

  final String? native;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchScreens$Page$media$titleToJson(this);
  int get hashCode {
    final l$native = native;
    final l$$__typename = $__typename;
    return Object.hashAll([l$native, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchScreens$Page$media$title) ||
        runtimeType != other.runtimeType) return false;
    final l$native = native;
    final lOther$native = other.native;
    if (l$native != lOther$native) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$SearchScreens$Page$media$title
    on Query$SearchScreens$Page$media$title {
  Query$SearchScreens$Page$media$title copyWith(
          {String? Function()? native, String? $__typename}) =>
      Query$SearchScreens$Page$media$title(
          native: native == null ? this.native : native(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$SearchScreens$Page$media$coverImage
    implements
        Fragment$MediaList$media$coverImage,
        Fragment$MediaListItem$coverImage {
  Query$SearchScreens$Page$media$coverImage(
      {this.extraLarge, required this.$__typename});

  @override
  factory Query$SearchScreens$Page$media$coverImage.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchScreens$Page$media$coverImageFromJson(json);

  final String? extraLarge;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchScreens$Page$media$coverImageToJson(this);
  int get hashCode {
    final l$extraLarge = extraLarge;
    final l$$__typename = $__typename;
    return Object.hashAll([l$extraLarge, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchScreens$Page$media$coverImage) ||
        runtimeType != other.runtimeType) return false;
    final l$extraLarge = extraLarge;
    final lOther$extraLarge = other.extraLarge;
    if (l$extraLarge != lOther$extraLarge) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$SearchScreens$Page$media$coverImage
    on Query$SearchScreens$Page$media$coverImage {
  Query$SearchScreens$Page$media$coverImage copyWith(
          {String? Function()? extraLarge, String? $__typename}) =>
      Query$SearchScreens$Page$media$coverImage(
          extraLarge: extraLarge == null ? this.extraLarge : extraLarge(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
