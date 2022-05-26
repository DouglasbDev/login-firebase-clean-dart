import 'package:app_firebase/src/queue/domain/entities/queue_entity.dart';
import 'package:app_firebase/src/queue/domain/value_objects/order.dart';
import 'package:app_firebase/src/queue/infra/adapters/json_to_queue.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
 test('deve converter um mep em um objeto do tipo QueueEntity', (){

    final queue = JsonToQueue.fromMap({
      'id': 'aaaa',
      'title': 'title',
      'priority': 1,
      'abbr': 'dg',
      'orders': [
        {
      'id': 'aaaa',
      'position': 1,
      'status': 'attending',
      'timestamp': '2022-05-26 11:41:30',
        }
    ]
    });

    expect(queue, isA<QueueEntity>());
    expect(queue.title, 'title');
    expect(queue.priority, 1);
    expect(queue.orders.first.status, OrderStatus.attending);
  });
}