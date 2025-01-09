/// {@template repos}
/// Abstract class that works as the parent for repos in the app
/// {@endtemplate}
abstract class Repos {
  Future<String> create();
  Future<String> read();
  Future<String> update();
  Future<String> delete();
}
