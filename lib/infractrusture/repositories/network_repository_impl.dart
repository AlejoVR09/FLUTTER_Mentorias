import 'package:app/domain/datasources/network_datasource.dart';
import 'package:app/domain/repositories/network_repository.dart';

/// {@template network_repository_impl}
/// class implementation that simulates the treatment of data that
/// is obtained from network
/// {@endtemplate}
class NetworkRepositoryImpl implements NetworkRepository {
  final NetworkDatasource networkDatasource;

  NetworkRepositoryImpl({
    required this.networkDatasource,
  });

  @override
  String getSomething() {
    return networkDatasource.fetchData();
  }

  @override
  void create() {
    networkDatasource.create();
  }

  @override
  void delete() {
    networkDatasource.delete();
  }

  @override
  void read() {
    networkDatasource.read();
  }

  @override
  void update() {
    networkDatasource.update();
  }
}
