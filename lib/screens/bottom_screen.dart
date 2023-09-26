import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int pageIndex = 0;

    final pages = [
      const FB(),
      const Insta(),
      const Mojo(),
      const WhatsApp(),
    ];
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.work_outline_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.widgets_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.person_outline,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FB extends StatelessWidget {
  const FB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class Insta extends StatelessWidget {
  const Insta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class Mojo extends StatelessWidget {
  const Mojo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}


