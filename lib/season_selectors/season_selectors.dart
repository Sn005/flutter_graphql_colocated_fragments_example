import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hello_flutter_graphql/schema.graphql.dart';

final currentYear = DateTime.now().year;

class SeasonSelectors extends HookWidget {
  const SeasonSelectors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final season = useState<Enum$MediaSeason>(Enum$MediaSeason.WINTER);
    final year = useState<int>(currentYear);

    return Row(children: [
      DropdownButton<Enum$MediaSeason>(
        value: season.value,
        items: <Enum$MediaSeason>[
          Enum$MediaSeason.WINTER,
          Enum$MediaSeason.SPRING,
          Enum$MediaSeason.SUMMER,
          Enum$MediaSeason.FALL
        ].map<DropdownMenuItem<Enum$MediaSeason>>((Enum$MediaSeason value) {
          return DropdownMenuItem<Enum$MediaSeason>(
            value: value,
            child: Text(value.toString()),
          );
        }).toList(),
        onChanged: (Enum$MediaSeason? value) {
          if (value != null) {
            season.value = value;
          }
        },
      ),
      Text('Year: ${year.value}'),
    ]);
  }
}
