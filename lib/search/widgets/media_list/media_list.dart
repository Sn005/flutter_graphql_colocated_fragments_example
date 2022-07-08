import 'package:flutter/material.dart';

import 'media_list.graphql.dart';

class MediaList extends StatelessWidget {
  final Fragment$MediaList data;
  const MediaList({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Text(data);
    if (data.media == null) {
      return const Text("作品が存在しませんでした");
    }
    return Column(
      children: data.media!.map((media) {
        return ListTile(
          title: Text(media!.title!.native ?? ""),
        );
      }).toList(),
    );
  }
}
