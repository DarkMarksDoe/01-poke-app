import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokipoke/app/features/home/domain/domain.dart';
import 'package:pokipoke/app/features/home/infrastructure/infrastructure.dart';

final berriesRepositoryProvider = Provider<BerriesRepository>((ref) {
  final berriesRepository = BerriesRepositoryImpl(BerriesDatasourceImpl());
  return berriesRepository;
});
