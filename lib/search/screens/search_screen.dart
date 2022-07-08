import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/media_list/index.dart';
import '../widgets/search_screen_query_variables_selectors/index.dart';
import 'use_search_screen.dart';

class SearchScreen extends HookConsumerWidget {
  const SearchScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = useSearchScreen(ref);
    if (result.hasException) {
      return Text(result.exception.toString());
    }

    if (result.isLoading) {
      return const Text('Loading');
    }
    final data = result.data;
    final page = data?.Page;
    return Scaffold(
      appBar: AppBar(
        title: const Text("title"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SearchScreenQueryVariablesSelectors(),
          MediaList(
              data: Fragment$MediaList(
                  media: page?.media, $__typename: page!.$__typename)),
        ],
      )),
    );
  }
}
