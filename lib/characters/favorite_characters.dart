import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../main.dart';

class FavoriteCharacters extends StatelessWidget {
  const FavoriteCharacters({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.favorites.isEmpty) {
      return Center(
        child: Text('No favorites yet.'),
      );
    }
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have '
              '${appState.favorites.length} favorites:'),
        ),
        for (var character in appState.favorites)
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(character['name']),
          ),
      ],
    );
  }
}
