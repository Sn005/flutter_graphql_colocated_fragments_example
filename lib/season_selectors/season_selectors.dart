import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hello_flutter_graphql/main.graphql.dart';
import 'package:hello_flutter_graphql/schema.graphql.dart';

final currentYear = DateTime.now().year;
const yearsPeriod = 20;
final yearRange = List.generate(yearsPeriod, (i) => currentYear - i);

class SeasonSelectors extends HookWidget {
  final Variables$Query$HomePage variables;
  final Enum$MediaSeason? season;
  final int? seasonYear;
  const SeasonSelectors(
      {Key? key, this.seasonYear, this.season, required this.variables})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SeasonYearSelector(seasonYear: variables.seasonYear),
      SeasonSelector(season: variables.season),
    ]);
  }
}

class SeasonYearSelector extends StatelessWidget {
  final int? seasonYear;
  const SeasonYearSelector({
    Key? key,
    this.seasonYear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: seasonYear,
      items: yearRange.map<DropdownMenuItem<int>>((value) {
        return DropdownMenuItem<int>(
          value: value,
          child: Text(value.toString()),
        );
      }).toList(),
      onChanged: (int? value) {
        if (value != null) {
          print(value);
        }
      },
    );
  }
}

class SeasonSelector extends StatelessWidget {
  final Enum$MediaSeason? season;
  const SeasonSelector({
    Key? key,
    this.season,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Enum$MediaSeason>(
      value: season,
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
          print(value);
        }
      },
    );
  }
}
