import 'package:equatable/equatable.dart';

abstract class WelcomeState extends Equatable {
  @override
  List<Object> get props => [];
}

class WelcomeInitial extends WelcomeState {}

class WelcomeInProgress extends WelcomeState {}

class WelcomeCompletedState extends WelcomeState {}
