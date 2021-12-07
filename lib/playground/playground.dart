
Stream<int> countStream(int max) async* {
  for(int i = 0; i < max; i++) {
    yield i;
  }
}

Future sumStream(Stream<int> stream) async {
  int sum = 0;
  await for(int value in stream) {
    sum += value;
  }
  return sum;
}