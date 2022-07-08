import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../hooks/use_search_screen_query_variables/use_search_screen_query_variables.dart';
import 'search_screen.graphql.dart';

class UseSearchScreen {
  final bool hasException;
  final OperationException? exception;
  final bool isLoading;
  final Query$SearchScreen? data;
  UseSearchScreen(this.hasException, this.exception, this.isLoading, this.data);
}

UseSearchScreen useSearchScreen(WidgetRef ref) {
  final variables = useSearchScreenQueryVariables(ref);

  final queryResult = useQuery$SearchScreen(
      Options$Query$SearchScreen(variables: variables.state));
  final result = queryResult.result;
  final hasException = result.hasException;
  final exception = result.exception;
  final isLoading = result.isLoading;
  final data = result.parsedData;
  return UseSearchScreen(hasException, exception, isLoading, data);
}
