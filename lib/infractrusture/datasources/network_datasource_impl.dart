import 'package:app/domain/datasources/network_datasource.dart';

/// {@template network_datasource_impl}
/// class implementation that simulates the obtaining of data from network
/// {@endtemplate}
class NetworkDatasourceImpl implements NetworkDatasource {
  @override
  String get url => 'http://example.com';

  @override
  Future<String> create() async {
    Future.delayed(Duration(seconds: 1));
    return 'created';
  }

  @override
  Future<String> delete() async {
    Future.delayed(Duration(seconds: 1));
    return 'deleted';
  }

  @override
  Future<String> read() async {
    Future.delayed(Duration(seconds: 1));
    return 'readed';
  }

  @override
  Future<String> update() async {
    Future.delayed(Duration(seconds: 1));
    return 'updated';
  }
}
