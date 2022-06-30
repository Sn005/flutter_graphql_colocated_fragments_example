import 'media_list.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
import 'season_selectors/season_selectors.graphql.dart';
part 'main.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Query$HomePage {
  Variables$Query$HomePage({this.season, this.seasonYear});

  @override
  factory Variables$Query$HomePage.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$HomePageFromJson(json);

  @JsonKey(unknownEnumValue: Enum$MediaSeason.$unknown)
  final Enum$MediaSeason? season;

  final int? seasonYear;

  Map<String, dynamic> toJson() => _$Variables$Query$HomePageToJson(this);
  int get hashCode {
    final l$season = season;
    final l$seasonYear = seasonYear;
    return Object.hashAll([l$season, l$seasonYear]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$HomePage) ||
        runtimeType != other.runtimeType) return false;
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) return false;
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (l$seasonYear != lOther$seasonYear) return false;
    return true;
  }

  Variables$Query$HomePage copyWith(
          {Enum$MediaSeason? Function()? season,
          int? Function()? seasonYear}) =>
      Variables$Query$HomePage(
          season: season == null ? this.season : season(),
          seasonYear: seasonYear == null ? this.seasonYear : seasonYear());
}

@JsonSerializable(explicitToJson: true)
class Query$HomePage {
  Query$HomePage({this.Page, required this.$__typename});

  @override
  factory Query$HomePage.fromJson(Map<String, dynamic> json) =>
      _$Query$HomePageFromJson(json);

  final Query$HomePage$Page? Page;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$HomePageToJson(this);
  int get hashCode {
    final l$Page = Page;
    final l$$__typename = $__typename;
    return Object.hashAll([l$Page, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$HomePage) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$HomePage on Query$HomePage {
  Query$HomePage copyWith(
          {Query$HomePage$Page? Function()? Page, String? $__typename}) =>
      Query$HomePage(
          Page: Page == null ? this.Page : Page(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const documentNodeQueryHomePage = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'HomePage'),
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
Query$HomePage _parserFn$Query$HomePage(Map<String, dynamic> data) =>
    Query$HomePage.fromJson(data);

class Options$Query$HomePage extends graphql.QueryOptions<Query$HomePage> {
  Options$Query$HomePage(
      {String? operationName,
      Variables$Query$HomePage? variables,
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
            document: documentNodeQueryHomePage,
            parserFn: _parserFn$Query$HomePage);
}

class WatchOptions$Query$HomePage
    extends graphql.WatchQueryOptions<Query$HomePage> {
  WatchOptions$Query$HomePage(
      {String? operationName,
      Variables$Query$HomePage? variables,
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
            document: documentNodeQueryHomePage,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$HomePage);
}

class FetchMoreOptions$Query$HomePage extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$HomePage(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$HomePage? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQueryHomePage);
}

extension ClientExtension$Query$HomePage on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$HomePage>> query$HomePage(
          [Options$Query$HomePage? options]) async =>
      await this.query(options ?? Options$Query$HomePage());
  graphql.ObservableQuery<Query$HomePage> watchQuery$HomePage(
          [WatchOptions$Query$HomePage? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$HomePage());
  void writeQuery$HomePage(
          {required Query$HomePage data,
          Variables$Query$HomePage? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: documentNodeQueryHomePage),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$HomePage? readQuery$HomePage(
      {Variables$Query$HomePage? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryHomePage),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$HomePage.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$HomePage> useQuery$HomePage(
        [Options$Query$HomePage? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$HomePage());
graphql.ObservableQuery<Query$HomePage> useWatchQuery$HomePage(
        [WatchOptions$Query$HomePage? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$HomePage());

class Query$HomePage$Widget extends graphql_flutter.Query<Query$HomePage> {
  Query$HomePage$Widget(
      {widgets.Key? key,
      Options$Query$HomePage? options,
      required graphql_flutter.QueryBuilder<Query$HomePage> builder})
      : super(
            key: key,
            options: options ?? Options$Query$HomePage(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$HomePage$Page
    implements Fragment$SeasonSelectors, Fragment$MediaList {
  Query$HomePage$Page({this.media, required this.$__typename});

  @override
  factory Query$HomePage$Page.fromJson(Map<String, dynamic> json) =>
      _$Query$HomePage$PageFromJson(json);

  final List<Query$HomePage$Page$media?>? media;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$HomePage$PageToJson(this);
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
    if (!(other is Query$HomePage$Page) || runtimeType != other.runtimeType)
      return false;
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

extension UtilityExtension$Query$HomePage$Page on Query$HomePage$Page {
  Query$HomePage$Page copyWith(
          {List<Query$HomePage$Page$media?>? Function()? media,
          String? $__typename}) =>
      Query$HomePage$Page(
          media: media == null ? this.media : media(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$HomePage$Page$media
    implements
        Fragment$SeasonSelectors$media,
        Fragment$MediaList$media,
        Fragment$MediaListItem {
  Query$HomePage$Page$media(
      {this.season,
      this.seasonYear,
      required this.$__typename,
      this.title,
      this.coverImage});

  @override
  factory Query$HomePage$Page$media.fromJson(Map<String, dynamic> json) =>
      _$Query$HomePage$Page$mediaFromJson(json);

  @JsonKey(unknownEnumValue: Enum$MediaSeason.$unknown)
  final Enum$MediaSeason? season;

  final int? seasonYear;

  @JsonKey(name: '__typename')
  final String $__typename;

  final Query$HomePage$Page$media$title? title;

  final Query$HomePage$Page$media$coverImage? coverImage;

  Map<String, dynamic> toJson() => _$Query$HomePage$Page$mediaToJson(this);
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
    if (!(other is Query$HomePage$Page$media) ||
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

extension UtilityExtension$Query$HomePage$Page$media
    on Query$HomePage$Page$media {
  Query$HomePage$Page$media copyWith(
          {Enum$MediaSeason? Function()? season,
          int? Function()? seasonYear,
          String? $__typename,
          Query$HomePage$Page$media$title? Function()? title,
          Query$HomePage$Page$media$coverImage? Function()? coverImage}) =>
      Query$HomePage$Page$media(
          season: season == null ? this.season : season(),
          seasonYear: seasonYear == null ? this.seasonYear : seasonYear(),
          $__typename: $__typename == null ? this.$__typename : $__typename,
          title: title == null ? this.title : title(),
          coverImage: coverImage == null ? this.coverImage : coverImage());
}

@JsonSerializable(explicitToJson: true)
class Query$HomePage$Page$media$title
    implements Fragment$MediaList$media$title, Fragment$MediaListItem$title {
  Query$HomePage$Page$media$title({this.native, required this.$__typename});

  @override
  factory Query$HomePage$Page$media$title.fromJson(Map<String, dynamic> json) =>
      _$Query$HomePage$Page$media$titleFromJson(json);

  final String? native;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$HomePage$Page$media$titleToJson(this);
  int get hashCode {
    final l$native = native;
    final l$$__typename = $__typename;
    return Object.hashAll([l$native, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$HomePage$Page$media$title) ||
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

extension UtilityExtension$Query$HomePage$Page$media$title
    on Query$HomePage$Page$media$title {
  Query$HomePage$Page$media$title copyWith(
          {String? Function()? native, String? $__typename}) =>
      Query$HomePage$Page$media$title(
          native: native == null ? this.native : native(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$HomePage$Page$media$coverImage
    implements
        Fragment$MediaList$media$coverImage,
        Fragment$MediaListItem$coverImage {
  Query$HomePage$Page$media$coverImage(
      {this.extraLarge, required this.$__typename});

  @override
  factory Query$HomePage$Page$media$coverImage.fromJson(
          Map<String, dynamic> json) =>
      _$Query$HomePage$Page$media$coverImageFromJson(json);

  final String? extraLarge;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$HomePage$Page$media$coverImageToJson(this);
  int get hashCode {
    final l$extraLarge = extraLarge;
    final l$$__typename = $__typename;
    return Object.hashAll([l$extraLarge, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$HomePage$Page$media$coverImage) ||
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

extension UtilityExtension$Query$HomePage$Page$media$coverImage
    on Query$HomePage$Page$media$coverImage {
  Query$HomePage$Page$media$coverImage copyWith(
          {String? Function()? extraLarge, String? $__typename}) =>
      Query$HomePage$Page$media$coverImage(
          extraLarge: extraLarge == null ? this.extraLarge : extraLarge(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
