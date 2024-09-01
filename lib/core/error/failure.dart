import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}

class CharactersGetFailure extends Failure {
  const CharactersGetFailure({required super.message});
}
