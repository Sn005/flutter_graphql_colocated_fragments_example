import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../screens/search_screens.graphql.dart';

@immutable
class QueryVariables {
  const QueryVariables({this.variables});

  final Variables$Query$SearchScreens? variables;

  QueryVariables copyWith({Variables$Query$SearchScreens? variables}) {
    return QueryVariables(
      variables: variables ?? this.variables,
    );
  }
}

class QueryVariablesNotifier extends StateNotifier<QueryVariables> {
  QueryVariablesNotifier({
    Variables$Query$SearchScreens? variables,
  }) : super(QueryVariables(variables: variables));

  void changeQueryVariables(QueryVariables newQueryVariables) {
    state = newQueryVariables;
  }
}

final queryVariablesProvider =
    StateNotifierProvider<QueryVariablesNotifier, QueryVariables>((ref) {
  return QueryVariablesNotifier();
});
