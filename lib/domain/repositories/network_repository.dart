import 'package:app/domain/entities/repos/repos.dart';

/// {@template network_repository}
/// class that works as the parent for the repos that get data from the network
/// {@endtemplate}
abstract interface class NetworkRepository extends Repos {
  String getSomething();
}
