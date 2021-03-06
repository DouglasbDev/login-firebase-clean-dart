import 'package:app_firebase/src/queue/domain/entities/queue_entity.dart';
import 'package:app_firebase/src/queue/domain/usecases/get_all_queues.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks/mocks.dart';



void main() {
 test("deve retornar umas lista de QueueEntity", (){

 final repository = QueueRepositoryMock() ;
 final entity = QueueEntityMock() ;
 when(()=> repository.GetAllQueues()).thenAnswer((_) => Stream.value([entity]));
 final usecase = GetAllQueues(repository);

 final result = usecase.call();

 expect(result, emits(isA<List<QueueEntity>>()));

 });
}