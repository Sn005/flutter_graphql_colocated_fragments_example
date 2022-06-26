import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'fragments.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Fragment$MediaList {
  Variables$Fragment$MediaList({this.season, this.seasonYear});

  @override
  factory Variables$Fragment$MediaList.fromJson(Map<String, dynamic> json) =>
      _$Variables$Fragment$MediaListFromJson(json);

  @JsonKey(unknownEnumValue: Enum$MediaSeason.$unknown)
  final Enum$MediaSeason? season;

  final int? seasonYear;

  Map<String, dynamic> toJson() => _$Variables$Fragment$MediaListToJson(this);
  int get hashCode {
    final l$season = season;
    final l$seasonYear = seasonYear;
    return Object.hashAll([l$season, l$seasonYear]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Fragment$MediaList) ||
        runtimeType != other.runtimeType) return false;
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) return false;
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (l$seasonYear != lOther$seasonYear) return false;
    return true;
  }

  Variables$Fragment$MediaList copyWith(
          {Enum$MediaSeason? Function()? season,
          int? Function()? seasonYear}) =>
      Variables$Fragment$MediaList(
          season: season == null ? this.season : season(),
          seasonYear: seasonYear == null ? this.seasonYear : seasonYear());
}

@JsonSerializable(explicitToJson: true)
class Fragment$MediaList {
  Fragment$MediaList({this.media, required this.$__typename});

  @override
  factory Fragment$MediaList.fromJson(Map<String, dynamic> json) =>
      _$Fragment$MediaListFromJson(json);

  final List<Fragment$MediaList$media?>? media;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$MediaListToJson(this);
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
    if (!(other is Fragment$MediaList) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Fragment$MediaList on Fragment$MediaList {
  Fragment$MediaList copyWith(
          {List<Fragment$MediaList$media?>? Function()? media,
          String? $__typename}) =>
      Fragment$MediaList(
          media: media == null ? this.media : media(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionMediaList = FragmentDefinitionNode(
    name: NameNode(value: 'MediaList'),
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
            FragmentSpreadNode(
                name: NameNode(value: 'MediaListItem'), directives: []),
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
const documentNodeFragmentMediaList = DocumentNode(definitions: [
  fragmentDefinitionMediaList,
  fragmentDefinitionMediaListItem,
]);

extension ClientExtension$Fragment$MediaList on graphql.GraphQLClient {
  void writeFragment$MediaList(
          {required Fragment$MediaList data,
          required Map<String, dynamic> idFields,
          Variables$Fragment$MediaList? variables,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'MediaList',
                  document: documentNodeFragmentMediaList),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$MediaList? readFragment$MediaList(
      {required Map<String, dynamic> idFields,
      Variables$Fragment$MediaList? variables,
      bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'MediaList',
                document: documentNodeFragmentMediaList),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Fragment$MediaList.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Fragment$MediaList$media implements Fragment$MediaListItem {
  Fragment$MediaList$media(
      {this.title, this.coverImage, required this.$__typename});

  @override
  factory Fragment$MediaList$media.fromJson(Map<String, dynamic> json) =>
      _$Fragment$MediaList$mediaFromJson(json);

  final Fragment$MediaList$media$title? title;

  final Fragment$MediaList$media$coverImage? coverImage;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$MediaList$mediaToJson(this);
  int get hashCode {
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([l$title, l$coverImage, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$MediaList$media) ||
        runtimeType != other.runtimeType) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$MediaList$media
    on Fragment$MediaList$media {
  Fragment$MediaList$media copyWith(
          {Fragment$MediaList$media$title? Function()? title,
          Fragment$MediaList$media$coverImage? Function()? coverImage,
          String? $__typename}) =>
      Fragment$MediaList$media(
          title: title == null ? this.title : title(),
          coverImage: coverImage == null ? this.coverImage : coverImage(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Fragment$MediaList$media$title implements Fragment$MediaListItem$title {
  Fragment$MediaList$media$title({this.native, required this.$__typename});

  @override
  factory Fragment$MediaList$media$title.fromJson(Map<String, dynamic> json) =>
      _$Fragment$MediaList$media$titleFromJson(json);

  final String? native;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$MediaList$media$titleToJson(this);
  int get hashCode {
    final l$native = native;
    final l$$__typename = $__typename;
    return Object.hashAll([l$native, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$MediaList$media$title) ||
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

extension UtilityExtension$Fragment$MediaList$media$title
    on Fragment$MediaList$media$title {
  Fragment$MediaList$media$title copyWith(
          {String? Function()? native, String? $__typename}) =>
      Fragment$MediaList$media$title(
          native: native == null ? this.native : native(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Fragment$MediaList$media$coverImage
    implements Fragment$MediaListItem$coverImage {
  Fragment$MediaList$media$coverImage(
      {this.extraLarge, required this.$__typename});

  @override
  factory Fragment$MediaList$media$coverImage.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$MediaList$media$coverImageFromJson(json);

  final String? extraLarge;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Fragment$MediaList$media$coverImageToJson(this);
  int get hashCode {
    final l$extraLarge = extraLarge;
    final l$$__typename = $__typename;
    return Object.hashAll([l$extraLarge, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$MediaList$media$coverImage) ||
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

extension UtilityExtension$Fragment$MediaList$media$coverImage
    on Fragment$MediaList$media$coverImage {
  Fragment$MediaList$media$coverImage copyWith(
          {String? Function()? extraLarge, String? $__typename}) =>
      Fragment$MediaList$media$coverImage(
          extraLarge: extraLarge == null ? this.extraLarge : extraLarge(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Fragment$MediaListItem {
  Fragment$MediaListItem(
      {this.title, this.coverImage, required this.$__typename});

  @override
  factory Fragment$MediaListItem.fromJson(Map<String, dynamic> json) =>
      _$Fragment$MediaListItemFromJson(json);

  final Fragment$MediaListItem$title? title;

  final Fragment$MediaListItem$coverImage? coverImage;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$MediaListItemToJson(this);
  int get hashCode {
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([l$title, l$coverImage, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$MediaListItem) || runtimeType != other.runtimeType)
      return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$MediaListItem on Fragment$MediaListItem {
  Fragment$MediaListItem copyWith(
          {Fragment$MediaListItem$title? Function()? title,
          Fragment$MediaListItem$coverImage? Function()? coverImage,
          String? $__typename}) =>
      Fragment$MediaListItem(
          title: title == null ? this.title : title(),
          coverImage: coverImage == null ? this.coverImage : coverImage(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const fragmentDefinitionMediaListItem = FragmentDefinitionNode(
    name: NameNode(value: 'MediaListItem'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Media'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'title'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
                name: NameNode(value: 'native'),
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
          name: NameNode(value: 'coverImage'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
                name: NameNode(value: 'extraLarge'),
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
const documentNodeFragmentMediaListItem = DocumentNode(definitions: [
  fragmentDefinitionMediaListItem,
]);

extension ClientExtension$Fragment$MediaListItem on graphql.GraphQLClient {
  void writeFragment$MediaListItem(
          {required Fragment$MediaListItem data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'MediaListItem',
                  document: documentNodeFragmentMediaListItem)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$MediaListItem? readFragment$MediaListItem(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'MediaListItem',
                document: documentNodeFragmentMediaListItem)),
        optimistic: optimistic);
    return result == null ? null : Fragment$MediaListItem.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Fragment$MediaListItem$title {
  Fragment$MediaListItem$title({this.native, required this.$__typename});

  @override
  factory Fragment$MediaListItem$title.fromJson(Map<String, dynamic> json) =>
      _$Fragment$MediaListItem$titleFromJson(json);

  final String? native;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$MediaListItem$titleToJson(this);
  int get hashCode {
    final l$native = native;
    final l$$__typename = $__typename;
    return Object.hashAll([l$native, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$MediaListItem$title) ||
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

extension UtilityExtension$Fragment$MediaListItem$title
    on Fragment$MediaListItem$title {
  Fragment$MediaListItem$title copyWith(
          {String? Function()? native, String? $__typename}) =>
      Fragment$MediaListItem$title(
          native: native == null ? this.native : native(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class Fragment$MediaListItem$coverImage {
  Fragment$MediaListItem$coverImage(
      {this.extraLarge, required this.$__typename});

  @override
  factory Fragment$MediaListItem$coverImage.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$MediaListItem$coverImageFromJson(json);

  final String? extraLarge;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Fragment$MediaListItem$coverImageToJson(this);
  int get hashCode {
    final l$extraLarge = extraLarge;
    final l$$__typename = $__typename;
    return Object.hashAll([l$extraLarge, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$MediaListItem$coverImage) ||
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

extension UtilityExtension$Fragment$MediaListItem$coverImage
    on Fragment$MediaListItem$coverImage {
  Fragment$MediaListItem$coverImage copyWith(
          {String? Function()? extraLarge, String? $__typename}) =>
      Fragment$MediaListItem$coverImage(
          extraLarge: extraLarge == null ? this.extraLarge : extraLarge(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
