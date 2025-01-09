/// {@template datasources}
/// Abstract class that works as the parent for datasources of the app
/// {@endtemplate}
abstract class Datasources {
  Future<String> create();
  Future<String> read();
  Future<String> update();
  Future<String> delete();
}
