import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../screens/search_screens.graphql.dart';
import './query_variables_state.dart';

class UseSearchScreenQueryVariables {
  final Variables$Query$SearchScreens variables;
  final void Function(QueryVariables) changeQueryVariables;

  UseSearchScreenQueryVariables(this.variables, this.changeQueryVariables);
}

UseSearchScreenQueryVariables useSearchScreenQueryVariables(WidgetRef ref) {
  final variables = useState<Variables$Query$SearchScreens>(
    Variables$Query$SearchScreens(seasonYear: DateTime.now().year),
  );
  final action = ref.read(queryVariablesProvider.notifier);
  final changeQueryVariables = action.changeQueryVariables;

  return UseSearchScreenQueryVariables(variables.value, changeQueryVariables);
}
