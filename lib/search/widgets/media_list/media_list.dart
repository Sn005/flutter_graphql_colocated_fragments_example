import 'package:flutter/material.dart';

import 'media_list.graphql.dart';

class MediaList extends StatelessWidget {
  final Fragment$MediaList data;
  const MediaList({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (data.media == null) {
      return const Text("作品が存在しませんでした");
    }
    return Column(
      children: data.media!.map((media) {
        return MediaListItem(
            media: Fragment$MediaListItem(
                title: media!.title,
                coverImage: media.coverImage,
                genres: media.genres,
                $__typename: media.$__typename));
      }).toList(),
    );
  }
}

class MediaListItem extends StatelessWidget {
  final Fragment$MediaListItem media;
  const MediaListItem({Key? key, required this.media}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final genres = media.genres!.map((genre) {
      return WidgetSpan(
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Text(genre ?? "",
                  style: TextStyle(color: Colors.black.withOpacity(0.6)))));
    }).toList();
    final listTile = ListTile(
      title: Text(media.title!.native ?? ""),
      subtitle: RichText(
          text: TextSpan(
        children: genres,
      )),
    );
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          children: [
            Image.network(
              media.coverImage!.extraLarge!,
              fit: BoxFit.cover,
              width: 100,
              height: 100,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  listTile,
                ],
              ),
            ),
          ],
        ));
  }
}
