import 'package:json_annotation/json_annotation.dart';

part 'berry_detail.g.dart';

@JsonSerializable(createToJson: false)
class BerryDetail {
  BerryDetail({
    required this.id,
    required this.size,
    required this.growthTime,
    required this.smoothness,
    required this.soilDryness,
    required this.name,
    required this.naturalGiftPower,
    required this.item,
    this.sprite,
  });

  final int id;
  final int size;
  final String name;
  @JsonKey(name: 'growth_time')
  final int growthTime;
  final int smoothness;
  @JsonKey(name: 'soil_dryness')
  final int soilDryness;
  @JsonKey(name: 'natural_gift_power')
  final int naturalGiftPower;
  final Item item;
  final String? sprite;

  factory BerryDetail.fromJson(Map<String, dynamic> json) =>
      _$BerryDetailFromJson(json);

  /// CopyWith method

  BerryDetail copyWith({
    int? id,
    int? size,
    int? growthTime,
    int? smoothness,
    int? soilDryness,
    String? name,
    int? naturalGiftPower,
    Item? item,
    String? sprite,
  }) {
    return BerryDetail(
      id: id ?? this.id,
      size: size ?? this.size,
      growthTime: growthTime ?? this.growthTime,
      smoothness: smoothness ?? this.smoothness,
      soilDryness: soilDryness ?? this.soilDryness,
      name: name ?? this.name,
      naturalGiftPower: naturalGiftPower ?? this.naturalGiftPower,
      item: item ?? this.item,
      sprite: sprite ?? this.sprite,
    );
  }
}

@JsonSerializable(createToJson: false)
class Item {
  final String name;
  final String url;

  Item({
    required this.name,
    required this.url,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
