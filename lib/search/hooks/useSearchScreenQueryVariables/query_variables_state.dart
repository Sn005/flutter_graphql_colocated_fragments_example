import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../screens/search_screens.graphql.dart';

class QueryVariablesNotifier
    extends StateNotifier<Variables$Query$SearchScreens> {
  QueryVariablesNotifier()
      : super(Variables$Query$SearchScreens(
          seasonYear: DateTime.now().year,
        ));

  void changeQueryVariables(Variables$Query$SearchScreens newState) =>
      state = newState;
}

final queryVariablesProvider = StateNotifierProvider<QueryVariablesNotifier,
    Variables$Query$SearchScreens>((ref) {
  return QueryVariablesNotifier();
});
