import 'package:app/domain/entities/datasources/datasources.dart';

/// {@template network_datasource}
/// Abstract class for datasources that get data from network
/// Abstract class -> Inheritance
/// {@endtemplate}
abstract class NetworkDatasource extends Datasources {
  final String url = '';
}
