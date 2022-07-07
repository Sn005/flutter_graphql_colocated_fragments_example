import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hello_flutter_graphql/search/screens/search_screens.graphql.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../widgets/media_list/index.dart';
import '../widgets/search_screen_query_variables_selectors/index.dart';

import 'search_screens.graphql.dart';

class SearchScreens extends HookConsumerWidget {
  const SearchScreens({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final queryVariables = useState<Variables$Query$SearchScreens>(
      Variables$Query$SearchScreens(seasonYear: DateTime.now().year),
    );
    final queryResult = useQuery$SearchScreens(
        Options$Query$SearchScreens(variables: queryVariables.value));
    final onChangeVariables =
        useCallback((Variables$Query$SearchScreens newVariables) {
      queryVariables.value = newVariables;
    }, [queryVariables]);
    final result = queryResult.result;

    if (result.hasException) {
      return Text(result.exception.toString());
    }

    if (result.isLoading) {
      return const Text('Loading');
    }
    final data = result.parsedData;
    final page = data?.Page;
    return Scaffold(
      appBar: AppBar(
        title: const Text("title"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SearchScreenQueryVariablesSelectors(
              variables: queryVariables.value,
              onChangeVariables: onChangeVariables),
          MediaList(
              data: Fragment$MediaList(
                  media: page?.media, $__typename: page!.$__typename)),
        ],
      )),
    );
  }
}
