import 'package:flutter/material.dart';
import 'dart:math';

class HomPage extends StatefulWidget {
  HomPage({Key? key}) : super(key: key);

  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  int onNomer = 6;
  int solNomer = 6;
  int? res;

  void ozgort() {
    Random random = Random();
    setState(() {
      onNomer = random.nextInt(6);
      solNomer = random.nextInt(6);
      res = onNomer + solNomer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF5353),
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Dice App',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        backgroundColor: const Color(0xffFF5353),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 250,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              ozgort();
                            },
                            child: Image.asset(
                              'assets/images/${solNomer == 0 ? solNomer + 1 : solNomer}.png',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              ozgort();
                            },
                            child: Image.asset(
                              'assets/images/${onNomer == 0 ? onNomer + 1 : onNomer}.png',
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'san: $onNomer',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'rez: $res',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          'san: $solNomer',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
