import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String message;
  final String title;
  const Failure({this.message, this.title = ''});
  @override
  List<Object> get props => [message, title];
}

class NoConnectionFailure extends Failure {
  const NoConnectionFailure({String message})
      : super(
          message: message,
          title: 'Problema de conexão',
        );
}
