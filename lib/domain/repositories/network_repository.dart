import 'package:app/domain/entities/repos/repos.dart';
import 'package:app/domain/repositories/repo_mixin_get_something.dart';

/// {@template network_repository}
/// class that works as the parent for the repos that get data from the network
/// {@endtemplate}
abstract interface class NetworkRepository extends Repos
    with RepoMixinGetSomething {}
