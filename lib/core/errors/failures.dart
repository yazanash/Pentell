abstract class Failure {
  String get message;
}

class NoInternetFailure implements Failure {
  final String _message;
  NoInternetFailure(this._message);
  @override
  // TODO: implement message
  String get message => _message;
}

class FailedAuthFailure implements Failure {
  final String _message;
  FailedAuthFailure(this._message);
  @override
  // TODO: implement message
  String get message => _message;
}

