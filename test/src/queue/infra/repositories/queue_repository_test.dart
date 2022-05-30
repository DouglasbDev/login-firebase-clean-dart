import 'package:app_firebase/src/queue/domain/entities/queue_entity.dart';
import 'package:app_firebase/src/queue/domain/usecases/get_all_queues.dart';
import 'package:app_firebase/src/queue/infra/repositories/queue_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks/mocks.dart';

void main() {
  test('queue repository ...', () {
    final datasource = IQueueDatasourceMock();
    when(() => datasource.getAllQueues()).thenAnswer((_) => Stream.value([
          {
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
          }
        ]));

        final repository = QueueRepository(datasource);

        final result = repository.GetAllQueues(); 

        expect(result, emits(
          isA<List<QueueEntity>>()
        ));
  });
}
