import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../screens/search_screens.graphql.dart';
import 'query_variables_state.dart';

class UseSearchScreenQueryVariables {
  final Variables$Query$SearchScreens state;
  final QueryVariablesNotifier action;

  UseSearchScreenQueryVariables(this.state, this.action);
}

UseSearchScreenQueryVariables useSearchScreenQueryVariables(WidgetRef ref) {
  final state = ref.watch(queryVariablesProvider);
  final action = ref.read(queryVariablesProvider.notifier);

  return UseSearchScreenQueryVariables(state, action);
}
