import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../screens/search_screen.graphql.dart';

class QueryVariablesNotifier
    extends StateNotifier<Variables$Query$SearchScreen> {
  QueryVariablesNotifier()
      : super(Variables$Query$SearchScreen(
          seasonYear: DateTime.now().year,
        ));

  void changeQueryVariables(Variables$Query$SearchScreen newState) =>
      state = newState;
}

final queryVariablesProvider =
    StateNotifierProvider<QueryVariablesNotifier, Variables$Query$SearchScreen>(
        (ref) {
  return QueryVariablesNotifier();
});
