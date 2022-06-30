import '../schema.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'season_selectors.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Fragment$SeasonSelectors {
  Variables$Fragment$SeasonSelectors({this.season, this.seasonYear});

  @override
  factory Variables$Fragment$SeasonSelectors.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Fragment$SeasonSelectorsFromJson(json);

  @JsonKey(unknownEnumValue: Enum$MediaSeason.$unknown)
  final Enum$MediaSeason? season;

  final int? seasonYear;

  Map<String, dynamic> toJson() =>
      _$Variables$Fragment$SeasonSelectorsToJson(this);
  int get hashCode {
    final l$season = season;
    final l$seasonYear = seasonYear;
    return Object.hashAll([l$season, l$seasonYear]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Fragment$SeasonSelectors) ||
        runtimeType != other.runtimeType) return false;
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) return false;
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (l$seasonYear != lOther$seasonYear) return false;
    return true;
  }

  Variables$Fragment$SeasonSelectors copyWith(
          {Enum$MediaSeason? Function()? season,
          int? Function()? seasonYear}) =>
      Variables$Fragment$SeasonSelectors(
          season: season == null ? this.season : season(),
          seasonYear: seasonYear == null ? this.seasonYear : seasonYear());
}

@JsonSerializable(explicitToJson: true)
class Fragment$SeasonSelectors {
  Fragment$SeasonSelectors({this.media, required this.$__typename});

  @override
  factory Fragment$SeasonSelectors.fromJson(Map<String, dynamic> json) =>
      _$Fragment$SeasonSelectorsFromJson(json);

  final List<Fragment$SeasonSelectors$media?>? media;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$SeasonSelectorsToJson(this);
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
    if (!(other is Fragment$SeasonSelectors) ||
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

extension UtilityExtension$Fragment$SeasonSelectors
    on Fragment$SeasonSelectors {
  Fragment$SeasonSelectors copyWith(
          {List<Fragment$SeasonSelectors$media?>? Function()? media,
          String? $__typename}) =>
      Fragment$SeasonSelectors(
          media: media == null ? this.media : media(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionSeasonSelectors = FragmentDefinitionNode(
    name: NameNode(value: 'SeasonSelectors'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Page'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'media'),
          alias: null,
          arguments: [
            ArgumentNode(
                name: NameNode(value: 'season'),
                value: VariableNode(name: NameNode(value: 'season'))),
            ArgumentNode(
                name: NameNode(value: 'seasonYear'),
                value: VariableNode(name: NameNode(value: 'seasonYear')))
          ],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
                name: NameNode(value: 'season'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            FieldNode(
                name: NameNode(value: 'seasonYear'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
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
    ]));
const documentNodeFragmentSeasonSelectors = DocumentNode(definitions: [
  fragmentDefinitionSeasonSelectors,
]);

extension ClientExtension$Fragment$SeasonSelectors on graphql.GraphQLClient {
  void writeFragment$SeasonSelectors(
          {required Fragment$SeasonSelectors data,
          required Map<String, dynamic> idFields,
          Variables$Fragment$SeasonSelectors? variables,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'SeasonSelectors',
                  document: documentNodeFragmentSeasonSelectors),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$SeasonSelectors? readFragment$SeasonSelectors(
      {required Map<String, dynamic> idFields,
      Variables$Fragment$SeasonSelectors? variables,
      bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'SeasonSelectors',
                document: documentNodeFragmentSeasonSelectors),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Fragment$SeasonSelectors.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Fragment$SeasonSelectors$media {
  Fragment$SeasonSelectors$media(
      {this.season, this.seasonYear, required this.$__typename});

  @override
  factory Fragment$SeasonSelectors$media.fromJson(Map<String, dynamic> json) =>
      _$Fragment$SeasonSelectors$mediaFromJson(json);

  @JsonKey(unknownEnumValue: Enum$MediaSeason.$unknown)
  final Enum$MediaSeason? season;

  final int? seasonYear;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$SeasonSelectors$mediaToJson(this);
  int get hashCode {
    final l$season = season;
    final l$seasonYear = seasonYear;
    final l$$__typename = $__typename;
    return Object.hashAll([l$season, l$seasonYear, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$SeasonSelectors$media) ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$SeasonSelectors$media
    on Fragment$SeasonSelectors$media {
  Fragment$SeasonSelectors$media copyWith(
          {Enum$MediaSeason? Function()? season,
          int? Function()? seasonYear,
          String? $__typename}) =>
      Fragment$SeasonSelectors$media(
          season: season == null ? this.season : season(),
          seasonYear: seasonYear == null ? this.seasonYear : seasonYear(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
