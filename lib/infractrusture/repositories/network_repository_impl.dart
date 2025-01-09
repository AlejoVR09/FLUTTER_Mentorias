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
    throw UnimplementedError();
  }

  @override
  Future<String> create() async {
    return await networkDatasource.create();
  }

  @override
  Future<String> delete() async {
    return await networkDatasource.delete();
  }

  @override
  Future<String> read() async {
    return await networkDatasource.read();
  }

  @override
  Future<String> update() async {
    return await networkDatasource.update();
  }
}
