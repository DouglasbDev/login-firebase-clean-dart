import 'package:app_firebase/src/queue/infra/datasource/queue_datasource.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class QueueFirestoreDatasource implements IQueueDatasource{
 
  final FirebaseFirestore firestore;

  QueueFirestoreDatasource(this.firestore); 

  @override
  Stream<List<Map>> getAllQueues() async * {
  
     final ref = firestore.collection("queue");    
      
    final snapshot = ref.snapshots();

    snapshot.listen((event) { 
      print(event);
    });

    await Future.delayed(Duration(seconds: 3));

    yield [];
    //throw UnimplementedError();
  }

}