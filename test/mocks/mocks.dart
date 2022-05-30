import 'package:app_firebase/src/queue/domain/entities/queue_entity.dart';
import 'package:app_firebase/src/queue/domain/repositories/queue_repository.dart';
import 'package:app_firebase/src/queue/infra/datasource/queue_datasource.dart';
import 'package:mocktail/mocktail.dart';

class QueueRepositoryMock extends Mock implements IQueueRepository{}
class QueueEntityMock extends Mock implements QueueEntity{}
class IQueueDatasourceMock extends Mock implements IQueueDatasource{}

