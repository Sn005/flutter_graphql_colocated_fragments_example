import '../../schema.graphql.dart';
import '../widgets/media_list/media_list.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'search_screen.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Query$SearchScreen {
  Variables$Query$SearchScreen({this.season, this.seasonYear});

  @override
  factory Variables$Query$SearchScreen.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$SearchScreenFromJson(json);

  @JsonKey(unknownEnumValue: Enum$MediaSeason.$unknown)
  final Enum$MediaSeason? season;

  final int? seasonYear;

  Map<String, dynamic> toJson() => _$Variables$Query$SearchScreenToJson(this);
  int get hashCode {
    final l$season = season;
    final l$seasonYear = seasonYear;
    return Object.hashAll([l$season, l$seasonYear]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$SearchScreen) ||
        runtimeType != other.runtimeType) return false;
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) return false;
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (l$seasonYear != lOther$seasonYear) return false;
    return true;
  }

  Variables$Query$SearchScreen copyWith(
          {Enum$MediaSeason? Function()? season,
          int? Function()? seasonYear}) =>
      Variables$Query$SearchScreen(
          season: season == null ? this.season : season(),
          seasonYear: seasonYear == null ? this.seasonYear : seasonYear());
}

@JsonSerializable(explicitToJson: true)
class Query$SearchScreen {
  Query$SearchScreen({this.Page, required this.$__typename});

  @override
  factory Query$SearchScreen.fromJson(Map<String, dynamic> json) =>
      _$Query$SearchScreenFromJson(json);

  final Query$SearchScreen$Page? Page;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$SearchScreenToJson(this);
  int get hashCode {
    final l$Page = Page;
    final l$$__typename = $__typename;
    return Object.hashAll([l$Page, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchScreen) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$SearchScreen on Query$SearchScreen {
  Query$SearchScreen copyWith(
          {Query$SearchScreen$Page? Function()? Page, String? $__typename}) =>
      Query$SearchScreen(
          Page: Page == null ? this.Page : Page(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const documentNodeQuerySearchScreen = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchScreen'),
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
  fragmentDefinitionMediaList,
  fragmentDefinitionMediaListItem,
]);
Query$SearchScreen _parserFn$Query$SearchScreen(Map<String, dynamic> data) =>
    Query$SearchScreen.fromJson(data);

class Options$Query$SearchScreen
    extends graphql.QueryOptions<Query$SearchScreen> {
  Options$Query$SearchScreen(
      {String? operationName,
      Variables$Query$SearchScreen? variables,
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
            document: documentNodeQuerySearchScreen,
            parserFn: _parserFn$Query$SearchScreen);
}

class WatchOptions$Query$SearchScreen
    extends graphql.WatchQueryOptions<Query$SearchScreen> {
  WatchOptions$Query$SearchScreen(
      {String? operationName,
      Variables$Query$SearchScreen? variables,
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
            document: documentNodeQuerySearchScreen,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$SearchScreen);
}

class FetchMoreOptions$Query$SearchScreen extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchScreen(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$SearchScreen? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQuerySearchScreen);
}

extension ClientExtension$Query$SearchScreen on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchScreen>> query$SearchScreen(
          [Options$Query$SearchScreen? options]) async =>
      await this.query(options ?? Options$Query$SearchScreen());
  graphql.ObservableQuery<Query$SearchScreen> watchQuery$SearchScreen(
          [WatchOptions$Query$SearchScreen? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$SearchScreen());
  void writeQuery$SearchScreen(
          {required Query$SearchScreen data,
          Variables$Query$SearchScreen? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQuerySearchScreen),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$SearchScreen? readQuery$SearchScreen(
      {Variables$Query$SearchScreen? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQuerySearchScreen),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$SearchScreen.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SearchScreen> useQuery$SearchScreen(
        [Options$Query$SearchScreen? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$SearchScreen());
graphql.ObservableQuery<Query$SearchScreen> useWatchQuery$SearchScreen(
        [WatchOptions$Query$SearchScreen? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$SearchScreen());

class Query$SearchScreen$Widget
    extends graphql_flutter.Query<Query$SearchScreen> {
  Query$SearchScreen$Widget(
      {widgets.Key? key,
      Options$Query$SearchScreen? options,
      required graphql_flutter.QueryBuilder<Query$SearchScreen> builder})
      : super(
            key: key,
            options: options ?? Options$Query$SearchScreen(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$SearchScreen$Page implements Fragment$MediaList {
  Query$SearchScreen$Page({this.media, required this.$__typename});

  @override
  factory Query$SearchScreen$Page.fromJson(Map<String, dynamic> json) =>
      _$Query$SearchScreen$PageFromJson(json);

  final List<Query$SearchScreen$Page$media?>? media;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$SearchScreen$PageToJson(this);
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
    if (!(other is Query$SearchScreen$Page) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$SearchScreen$Page on Query$SearchScreen$Page {
  Query$SearchScreen$Page copyWith(
          {List<Query$SearchScreen$Page$media?>? Function()? media,
          String? $__typename}) =>
      Query$SearchScreen$Page(
          media: media == null ? this.media : media(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$SearchScreen$Page$media
    implements Fragment$MediaList$media, Fragment$MediaListItem {
  Query$SearchScreen$Page$media(
      {this.title, this.genres, this.coverImage, required this.$__typename});

  @override
  factory Query$SearchScreen$Page$media.fromJson(Map<String, dynamic> json) =>
      _$Query$SearchScreen$Page$mediaFromJson(json);

  final Query$SearchScreen$Page$media$title? title;

  final List<String?>? genres;

  final Query$SearchScreen$Page$media$coverImage? coverImage;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$SearchScreen$Page$mediaToJson(this);
  int get hashCode {
    final l$title = title;
    final l$genres = genres;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$coverImage,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchScreen$Page$media) ||
        runtimeType != other.runtimeType) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$genres = genres;
    final lOther$genres = other.genres;
    if (l$genres != null && lOther$genres != null) {
      if (l$genres.length != lOther$genres.length) return false;
      for (int i = 0; i < l$genres.length; i++) {
        final l$genres$entry = l$genres[i];
        final lOther$genres$entry = lOther$genres[i];
        if (l$genres$entry != lOther$genres$entry) return false;
      }
    } else if (l$genres != lOther$genres) {
      return false;
    }

    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$SearchScreen$Page$media
    on Query$SearchScreen$Page$media {
  Query$SearchScreen$Page$media copyWith(
          {Query$SearchScreen$Page$media$title? Function()? title,
          List<String?>? Function()? genres,
          Query$SearchScreen$Page$media$coverImage? Function()? coverImage,
          String? $__typename}) =>
      Query$SearchScreen$Page$media(
          title: title == null ? this.title : title(),
          genres: genres == null ? this.genres : genres(),
          coverImage: coverImage == null ? this.coverImage : coverImage(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$SearchScreen$Page$media$title
    implements Fragment$MediaList$media$title, Fragment$MediaListItem$title {
  Query$SearchScreen$Page$media$title({this.native, required this.$__typename});

  @override
  factory Query$SearchScreen$Page$media$title.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchScreen$Page$media$titleFromJson(json);

  final String? native;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchScreen$Page$media$titleToJson(this);
  int get hashCode {
    final l$native = native;
    final l$$__typename = $__typename;
    return Object.hashAll([l$native, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchScreen$Page$media$title) ||
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

extension UtilityExtension$Query$SearchScreen$Page$media$title
    on Query$SearchScreen$Page$media$title {
  Query$SearchScreen$Page$media$title copyWith(
          {String? Function()? native, String? $__typename}) =>
      Query$SearchScreen$Page$media$title(
          native: native == null ? this.native : native(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Query$SearchScreen$Page$media$coverImage
    implements
        Fragment$MediaList$media$coverImage,
        Fragment$MediaListItem$coverImage {
  Query$SearchScreen$Page$media$coverImage(
      {this.extraLarge, required this.$__typename});

  @override
  factory Query$SearchScreen$Page$media$coverImage.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchScreen$Page$media$coverImageFromJson(json);

  final String? extraLarge;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchScreen$Page$media$coverImageToJson(this);
  int get hashCode {
    final l$extraLarge = extraLarge;
    final l$$__typename = $__typename;
    return Object.hashAll([l$extraLarge, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchScreen$Page$media$coverImage) ||
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

extension UtilityExtension$Query$SearchScreen$Page$media$coverImage
    on Query$SearchScreen$Page$media$coverImage {
  Query$SearchScreen$Page$media$coverImage copyWith(
          {String? Function()? extraLarge, String? $__typename}) =>
      Query$SearchScreen$Page$media$coverImage(
          extraLarge: extraLarge == null ? this.extraLarge : extraLarge(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
