import 'package:flutter/material.dart';
import 'package:job_app/Pages/Home_page.dart';

class LauncherPage extends StatelessWidget {
  static const String routeName = '/';

  const LauncherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        children: const [
          _MainImageSection(),
          _Button()],
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () =>
          Navigator.pushReplacementNamed(context, HomePage.routeName),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: const Size(200, 50), // NEW
// This is what you need!
      ),
      child: const Text('Start Browsing',
          style: TextStyle(
              color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold)),
    );
  }
}

class _MainImageSection extends StatelessWidget {
  const _MainImageSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'images/img.png',
            fit: BoxFit.cover,// OR BoxFit.fitWidth
            alignment: FractionalOffset.topCenter
        ),
        const Text(
          'Climb higher with',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        SizedBox(
          height: 10,
        ),
        const Text('JobSeek app',
            style: TextStyle(color: Colors.white, fontSize: 30)),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
