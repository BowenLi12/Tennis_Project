import 'package:flutter/material.dart';
import 'HomePage.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    await Future
        .delayed(const Duration(seconds: 2))
        .then((value) {
      Navigator.pop(context);
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => HomePage()));
    });
  }


  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFACE1AF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Screenshot_2024-08-26_at_6.41.13_PM-removebg-preview.png"),
                  fit: BoxFit.cover,
                ),
              ),
              height: 180,
              width: 180,
            ),
            const Text("Tennis Project", style: TextStyle(fontSize: 40, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}