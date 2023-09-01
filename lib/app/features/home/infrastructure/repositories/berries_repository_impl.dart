import 'package:pokipoke/app/features/home/domain/domain.dart';

class BerriesRepositoryImpl extends BerriesRepository {
  final BerriesDatasource datasource;

  BerriesRepositoryImpl(this.datasource);

  @override
  Future<List<BerryDetail>> getBerriesByPage({
    int limit = 10,
    int offset = 0,
  }) => datasource.getBerriesByPage(limit: limit, offset: offset);
}
