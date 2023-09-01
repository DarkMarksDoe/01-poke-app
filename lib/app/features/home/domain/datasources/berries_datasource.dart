import 'package:pokipoke/app/features/home/domain/domain.dart';

abstract class BerriesDatasource {
  Future<List<BerryDetail>> getBerriesByPage({int limit = 10, int offset = 0});
}
