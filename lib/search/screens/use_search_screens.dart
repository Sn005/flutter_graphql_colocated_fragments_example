import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../hooks/useSearchScreenQueryVariables/use_search_screen_query_variables.dart';
import 'search_screens.graphql.dart';

class UseSearchScreens {
  final bool hasException;
  final OperationException? exception;
  final bool isLoading;
  final Query$SearchScreens? data;
  UseSearchScreens(
      this.hasException, this.exception, this.isLoading, this.data);
}

UseSearchScreens useSearchScreens(WidgetRef ref) {
  final variables = useSearchScreenQueryVariables(ref);

  final queryResult = useQuery$SearchScreens(
      Options$Query$SearchScreens(variables: variables.state));
  final result = queryResult.result;
  final hasException = result.hasException;
  final exception = result.exception;
  final isLoading = result.isLoading;
  final data = result.parsedData;
  return UseSearchScreens(hasException, exception, isLoading, data);
}
