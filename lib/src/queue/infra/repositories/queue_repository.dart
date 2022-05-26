import 'dart:convert';

import 'package:app_firebase/src/queue/domain/entities/queue_entity.dart';
import 'package:app_firebase/src/queue/domain/repositories/queue_repository.dart';
import 'package:app_firebase/src/queue/infra/adapters/json_to_queue.dart';
import 'package:app_firebase/src/queue/infra/datasource/queue_datasource.dart';



class QueueRepository implements IQueueRepository{

  final IQueueDatasource datasource;

  QueueRepository(this.datasource);

  @override
  Stream<List<QueueEntity>> GetAllQueues() {
   final stream = datasource.getAllQueues();

   return stream.map(_convert);
  }

  List<QueueEntity> _convert(List<Map> list){
     return list.map(JsonToQueue.fromMap).toList();
  }

}