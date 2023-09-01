import 'package:pokipoke/app/features/home/domain/domain.dart';

class BerriesState {
  final bool isLastPage;
  final bool isLoading;
  final int limit;
  final int offset;
  final List<BerryDetail> berries;

  BerriesState({
    this.isLastPage = false,
    this.limit = 10,
    this.offset = 0,
    this.isLoading = false,
    this.berries = const [],
  });

  BerriesState copyWith({
    bool? isLastPage,
    int? limit,
    int? offset,
    bool? isLoading,
    List<BerryDetail>? berries,
  }) =>
      BerriesState(
        isLastPage: isLastPage ?? this.isLastPage,
        limit: limit ?? this.limit,
        offset: offset ?? this.offset,
        isLoading: isLoading ?? this.isLoading,
        berries: berries ?? this.berries,
      );
}
