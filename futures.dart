Future<String> fetchUserOrder() => Future.delayed(
  Duration(seconds: 2),
  () => throw Exception('out of milk'),
);


void main() {
  print('Program started');
  fetchUserOrder()
  .then((order) => print('Order is ready: $order'))
  .catchError((error) => print(error))
  .whenComplete(() => print('Done'));
}
