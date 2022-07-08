import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../screens/search_screen.graphql.dart';
import 'query_variables_state.dart';

class UseSearchScreenQueryVariables {
  final Variables$Query$SearchScreen state;
  final QueryVariablesNotifier action;

  UseSearchScreenQueryVariables(this.state, this.action);
}

UseSearchScreenQueryVariables useSearchScreenQueryVariables(WidgetRef ref) {
  final state = ref.watch(queryVariablesProvider);
  final action = ref.read(queryVariablesProvider.notifier);

  return UseSearchScreenQueryVariables(state, action);
}
