import 'package:dio/dio.dart';
import 'package:pokipoke/app/features/home/domain/domain.dart';

class BerriesDatasourceImpl extends BerriesDatasource {
  late final Dio dio;
  BerriesDatasourceImpl()
      : dio = Dio(
          BaseOptions(
            baseUrl: 'https://pokeapi.co/api/v2/',
          ),
        );

  @override
  Future<List<BerryDetail>> getBerriesByPage(
      {int limit = 10, int offset = 0}) async {
    final Response response = await dio.get('/berry', queryParameters: {
      'limit': limit,
      'offset': offset,
    });

    final List<BerryDetail> berries = [];
    for (final berry in response.data['results'] ?? []) {
      final berryListing = (BerryListing.fromJson(berry));
      final berryDetail = await getBerryDetail(berryListing.name);
      final berrySprite = await getBerrySprite(berryDetail.item.url);
      berries.add(berryDetail.copyWith(sprite: berrySprite));
    }
    return berries;
  }

  Future<String> getBerrySprite(String url) async {
    final itemId = url.split('/').reversed.toList()[1];

    final Response response = await dio.get('/item/$itemId');
    if (response.statusCode != 200) {
      throw Exception('Error getting berry sprite');
    }

    final String berrySprite = response.data['sprites']['default'];

    return berrySprite;
  }

  Future<BerryDetail> getBerryDetail(String name) async {
    final Response response = await dio.get('/berry/$name');
    if (response.statusCode != 200) {
      throw Exception('Error getting berry detail');
    }

    final BerryDetail berry = BerryDetail.fromJson(response.data);

    return berry;
  }
}
