import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokipoke/app/features/home/domain/domain.dart';
import 'package:pokipoke/app/features/home/presentation/tabs/berries/providers/providers.dart';

final berriesProvider = StateNotifierProvider<BerriesNotifier, BerriesState>(
  (ref) {
    final berriesRepository = ref.watch(berriesRepositoryProvider);
    return BerriesNotifier(berriesRepository: berriesRepository);
  },
);

class BerriesNotifier extends StateNotifier<BerriesState> {
  final BerriesRepository berriesRepository;

  BerriesNotifier({required this.berriesRepository}) : super(BerriesState()) {
    fetchBerries();
  }

  Future<void> fetchBerries() async {
    if (state.isLoading || state.isLastPage) return;
    state = state.copyWith(isLoading: true);

    final berries = await berriesRepository.getBerriesByPage(
      limit: state.limit,
      offset: state.offset,
    );

    if (berries.isEmpty) {
      state = state.copyWith(
        isLoading: false,
        isLastPage: true,
      );
      return;
    }

    state = state.copyWith(
      isLoading: false,
      isLastPage: false,
      offset: state.offset + state.limit,
      berries: [...state.berries, ...berries],
    );
    return;
  }
}
