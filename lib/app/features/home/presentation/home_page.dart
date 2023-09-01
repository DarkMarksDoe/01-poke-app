import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokipoke/app/features/home/presentation/providers/home_providers.dart';
import 'package:pokipoke/app/features/home/presentation/tabs/tabs.dart';

/// [HomePage] is the the home page of the app where the user can see a list of pokemons.
///
/// The `HomePage` displays a list of pokemons.
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(currentTabProvider);

    final List<Widget> pages = [
      const BerriesTab(),
      const HomeTab(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('PokiPoke'),
        centerTitle: true,
        elevation: 0,
      ),
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => ref.watch(currentTabProvider.notifier).set(index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.grass),
            label: 'Berries',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.catching_pokemon),
            label: 'Pokemons',
          ),
        ],
      ),
    );
  }
}
