import 'package:flutter/material.dart';
import 'package:pokipoke/app/constants/app_sizes.dart';
import 'package:pokipoke/app/features/home/widgets/neumorphic_card.dart';
import 'package:pokipoke/app/widgets/poke_app_bar.dart';

/// [HomePage] is the the home page of the app where the user can see a list of pokemons.
///
/// The `HomePage` displays a list of pokemons.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned.fill(
              top: MediaQuery.of(context).size.height * 0.21,
              child: Container(
                color: Colors.grey[100], // Color de fondo
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const NeumorphicCard();
                  },
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topCenter,
              child: PokeAppBar(),
            ),
          ],
        ),
      ),
    );
  }
}
