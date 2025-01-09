import 'package:app/infractrusture/repositories/network_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks/mock_network_datasource.dart';

void main() {
  group(
    'Testing the network data source',
    () {
      final mockNetworkDataSource = MockNetworkDatasource();
      final networkRepo =
          NetworkRepositoryImpl(networkDatasource: mockNetworkDataSource);
      test(
        'Testing the create method',
        () async{
          // stubbing the create method
          when(
            () => mockNetworkDataSource.create(),
          ).thenAnswer(
            (invocation) {
              return Future.value('created');
            },
          );
          // making the call in the repo
          final response = await networkRepo.create();

          // verify that the response is correct
          expect(response, 'created');
        },
      );
      test(
        'Testing the read method',
        () async {
          // stubbing the read method
          when(
            () => mockNetworkDataSource.read(),
          ).thenAnswer(
            (invocation) {
              return Future.value('readed');
            },
          );
          // making the call in the repo
          final response = await networkRepo.read();
          // verify that the response is correct
          expect(response, 'readed');
        },
      );
      test(
        'Testing the delete method',
        () async {
          // stubbing the delete method
          when(
            () => mockNetworkDataSource.delete(),
          ).thenAnswer(
            (invocation) {
              return Future.value('deleted');
            },
          );
          // making the call in the repo
          final response = await networkRepo.delete();
          // verify that the response is correct
          expect(response, 'deleted');
        },
      );
      test(
        'Testing the update method',
        () async{
          // stubbing the update method
          when(
            () => mockNetworkDataSource.update(),
          ).thenAnswer(
            (invocation) {
              return Future.value('updated');
            },
          );
          // making the call in the repo
          final response = await networkRepo.update();
          // verify that the response is correct
          expect(response, 'updated');
        },
      );
    },
  );
}
