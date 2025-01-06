import 'package:app/domain/datasources/network_datasource.dart';

/// {@template network_datasource_impl}
/// class implementation that simulates the obtaining of data from network
/// {@endtemplate}
class NetworkDatasourceImpl implements NetworkDatasource {
  @override
  String get url => 'http://example.com';

  @override
  String fetchData() {
    return 'Example Done';
  }
}
