abstract class Failure {
  String get message;
}

class OfflineFailure implements Failure {
  final String _message;
  OfflineFailure(this._message);
  @override
  String get message => _message;
}

class ServerFailure implements Failure {
  final String _message;
  ServerFailure(this._message);
  @override
  String get message => throw UnimplementedError();
}

class EmptyCacheFailure implements Failure {
  final String _message;
  EmptyCacheFailure(this._message);

  @override
  String get message => _message;
}

class PermissionFailure implements Failure {
  final String _message;

  PermissionFailure(this._message);
  @override
  String get message => _message;
}

class BannedUserFailure implements Failure {
  final String _message;
  BannedUserFailure(this._message);

  @override
  String get message => _message;
}

class FailedAuthFailure implements Failure {
  final String _message;
  FailedAuthFailure(this._message);
  @override
  String get message => _message;
}
