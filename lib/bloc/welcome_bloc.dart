import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:link/bloc/welcome_event.dart';
import 'package:link/bloc/welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(WelcomeInitial());

  @override
  Stream<WelcomeState> mapEventToState(
      WelcomeEvent event,
      ) async* {
    if (event is WelcomeStarted) {
      yield WelcomeInProgress();
      // You can add any async tasks here if needed.
      await Future.delayed(const Duration(seconds: 5));
      yield WelcomeCompletedState();
    }
  }
}
