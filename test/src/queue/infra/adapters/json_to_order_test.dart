import 'package:app_firebase/src/queue/domain/value_objects/order.dart';
import 'package:app_firebase/src/queue/infra/adapters/json_to_order.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  test('deve converter um mep em um objeto do tipo Order', (){

    final order = JsonToOrder.fromMap({
      'id': 'aaaa',
      'position': 1,
      'status': 'attending',
      'timestamp': '2022-05-26 11:41:30',
    });

    expect(order, isA<Order>());

    expect(order.status, OrderStatus.attending);

  });
}