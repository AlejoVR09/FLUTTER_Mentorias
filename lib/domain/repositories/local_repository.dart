import 'package:app/domain/entities/repos/repos.dart';
import 'package:app/domain/repositories/repo_mixin_get_something.dart';

/// {@template local_repository}
/// class that works as the parent for the repos that get data locally
/// {@endtemplate}
abstract interface class LocalRepository extends Repos
    with RepoMixinGetSomething {}
