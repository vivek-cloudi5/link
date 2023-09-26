import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../bloc/welcome_bloc.dart';
import '../bloc/welcome_event.dart';
import '../bloc/welcome_state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => WelcomeBloc(),
        child: const SplashBody(),
      ),
    );
  }
}

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    final welcomeBloc = BlocProvider.of<WelcomeBloc>(context);

    // Initialize the welcome sequence when the screen is displayed.
    welcomeBloc.add(WelcomeStarted());

    return BlocListener<WelcomeBloc, WelcomeState>(
      listener: (context, state) {
        if (state is WelcomeCompletedState) {
          Navigator.of(context).pushReplacementNamed('/welcome');
        }
      },
      child: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          color: Colors.black
        ),
        child: const Center(
          child: CircularProgressIndicator(color: Colors.white,),
        ),
      ),
    );
  }
}
