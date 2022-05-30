import 'package:app_firebase/src/queue/external/queue_firestore_datasource.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('queue firestore datasource ...', () async {
    final firestore = FakeFirebaseFirestore();

    await firestore.collection('queue').add(
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
        
    );
    final datasource = QueueFirestoreDatasource(firestore);

    await datasource.getAllQueues().first;
      });
}