import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hello_flutter_graphql/schema.graphql.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../hooks/useSearchScreenQueryVariables/index.dart';
import '../../screens/search_screens.graphql.dart';

final currentYear = DateTime.now().year;
const yearsPeriod = 20;
final yearRange = List.generate(yearsPeriod, (i) => currentYear - i);

class SearchScreenQueryVariablesSelectors extends HookWidget {
  const SearchScreenQueryVariablesSelectors({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(children: const [
      SeasonYearSelector(),
      SeasonSelector(),
    ]);
  }
}

class SeasonYearSelector extends HookConsumerWidget {
  const SeasonYearSelector({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final variables = useSearchScreenQueryVariables(ref);
    final state = variables.state;
    final action = variables.action;
    return DropdownButton<int>(
      value: state.seasonYear,
      items: yearRange.map<DropdownMenuItem<int>>((value) {
        return DropdownMenuItem<int>(
          value: value,
          child: Text(value.toString()),
        );
      }).toList(),
      onChanged: (int? value) {
        if (value != null) {
          action.changeQueryVariables(
            Variables$Query$SearchScreens(
              seasonYear: value,
              season: variables.state.season,
            ),
          );
        }
      },
    );
  }
}

class SeasonSelector extends HookConsumerWidget {
  const SeasonSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final variables = useSearchScreenQueryVariables(ref);
    final state = variables.state;
    final action = variables.action;
    return DropdownButton<Enum$MediaSeason>(
      value: state.season,
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
          action.changeQueryVariables(
            Variables$Query$SearchScreens(
              seasonYear: variables.state.seasonYear,
              season: value,
            ),
          );
        }
      },
    );
  }
}
