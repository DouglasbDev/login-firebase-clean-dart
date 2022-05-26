import 'package:app_firebase/src/queue/domain/entities/queue_entity.dart';
import 'package:app_firebase/src/queue/infra/adapters/json_to_order.dart';

class JsonToQueue{
  static QueueEntity fromMap(dynamic json){
    return QueueEntity(
    id: json['id'], 
    title: json['title'], 
    priority: json ['priority'],
    abbr: json['abbr'],
    orders: json.containsKey('orders') ? (json['orders'] as List).map(JsonToOrder.fromMap).toList() : [],
    
    );
  }
}