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
    // TODO: implement create
  }

  @override
  void delete() {
    // TODO: implement delete
  }

  @override
  void read() {
    // TODO: implement read
  }

  @override
  void update() {
    // TODO: implement update
  }
}
