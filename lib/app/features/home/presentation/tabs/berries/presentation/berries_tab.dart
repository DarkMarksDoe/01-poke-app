import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokipoke/app/constants/app_sizes.dart';
import 'package:pokipoke/app/features/home/presentation/widgets/neumorphic_tile.dart';
import 'package:pokipoke/app/features/home/presentation/tabs/berries/providers/providers.dart';

/// [BerriesTab] is the tab that shows the berries list.
class BerriesTab extends ConsumerStatefulWidget {
  const BerriesTab({super.key});

  @override
  BerriesTabState createState() => BerriesTabState();
}

class BerriesTabState extends ConsumerState {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(() {
      final maxScroll = scrollController.position.maxScrollExtent;
      final currentPosition = scrollController.position.pixels;
      if (currentPosition >= maxScroll / 2) {
        ref.read(berriesProvider.notifier).fetchBerries();
      }
    });
    ref.read(berriesProvider.notifier).fetchBerries();

    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final berriesState = ref.watch(berriesProvider);

    if (berriesState.isLoading && berriesState.berries.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return Container(
      color: Colors.grey[100], // Color de fondo
      child: ListView.builder(
        controller: scrollController,
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
        itemCount: berriesState.berries.length,
        itemBuilder: (context, index) {
          final berry = berriesState.berries[index];
          return NeumorphicTile(
            title: 'Name: ${berry.name}',
            imageUrl: berry.sprite,
            subtitle: 'Growth time: ${berry.growthTime} hours',
          );
        },
      ),
    );
  }
}
