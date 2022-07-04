import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hello_flutter_graphql/main.graphql.dart';
import 'package:hello_flutter_graphql/schema.graphql.dart';

final currentYear = DateTime.now().year;
const yearsPeriod = 20;
final yearRange = List.generate(yearsPeriod, (i) => currentYear - i);

class SeasonSelectors extends HookWidget {
  const SeasonSelectors({
    Key? key,
    required this.variables,
    required this.onChangeVariables,
  }) : super(key: key);
  final Variables$Query$HomePage variables;
  final Function(Variables$Query$HomePage)? onChangeVariables;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SeasonYearSelector(
          variables: variables, onChangeVariables: onChangeVariables),
      SeasonSelector(
          variables: variables, onChangeVariables: onChangeVariables),
    ]);
  }
}

class SeasonYearSelector extends StatelessWidget {
  const SeasonYearSelector({
    Key? key,
    required this.variables,
    required this.onChangeVariables,
  }) : super(key: key);
  final Variables$Query$HomePage variables;
  final Function(Variables$Query$HomePage)? onChangeVariables;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: variables.seasonYear,
      items: yearRange.map<DropdownMenuItem<int>>((value) {
        return DropdownMenuItem<int>(
          value: value,
          child: Text(value.toString()),
        );
      }).toList(),
      onChanged: (int? value) {
        if (value != null) {
          onChangeVariables?.call(
            Variables$Query$HomePage(
              seasonYear: value,
              season: variables.season,
            ),
          );
        }
      },
    );
  }
}

class SeasonSelector extends StatelessWidget {
  const SeasonSelector({
    Key? key,
    required this.variables,
    required this.onChangeVariables,
  }) : super(key: key);
  final Variables$Query$HomePage variables;
  final Function(Variables$Query$HomePage)? onChangeVariables;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Enum$MediaSeason>(
      value: variables.season,
      items: <Enum$MediaSeason>[
        Enum$MediaSeason.WINTER,
        Enum$MediaSeason.SPRING,
        Enum$MediaSeason.SUMMER,
        Enum$MediaSeason.FALL
      ].map<DropdownMenuItem<Enum$MediaSeason>>((Enum$MediaSeason value) {
        return DropdownMenuItem<Enum$MediaSeason>(
          value: value,
          child: Text(value.toString().split('.').last),
        );
      }).toList(),
      onChanged: (Enum$MediaSeason? value) {
        if (value != null) {
          onChangeVariables?.call(
            Variables$Query$HomePage(
              seasonYear: variables.seasonYear,
              season: value,
            ),
          );
        }
      },
    );
  }
}
