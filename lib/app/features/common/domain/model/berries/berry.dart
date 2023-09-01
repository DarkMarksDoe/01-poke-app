import 'package:json_annotation/json_annotation.dart';

part 'berry.g.dart';

@JsonSerializable(createToJson: false)
class BerryListing {
  BerryListing({
    required this.name,
  });
  final String name;

  factory BerryListing.fromJson(Map<String, dynamic> json) =>
      _$BerryListingFromJson(json);
}
