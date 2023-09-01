import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_providers.g.dart';

@riverpod
class CurrentTab extends _$CurrentTab {
  @override
  int build() => 0;

  void set(int index) {
    state = index;
  }
}