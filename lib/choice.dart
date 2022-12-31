import 'dart:math';

enum BoxState{
  EMPTY, CROSS, CIRCLE
}
List<List<BoxState>> chunk(List<BoxState> list, int sizes) {
  return List.generate(
      (list.length/sizes).ceil(),
          (index) =>
          list.sublist(index * sizes, min(index*sizes+sizes, list.length)));
}