import 'package:flutter/material.dart';
import 'package:what_eat/helpers/image_helper.dart';
import 'package:what_eat/screens/result_screen.dart';
import 'package:what_eat/widgets/button_sound.dart';
import 'package:what_eat/widgets/layout.dart';

class AloneScreen extends StatelessWidget {
  const AloneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Layout(
        backgroundImage: ImageHelper.man5,
        child: Padding(
          padding: const EdgeInsets.only(top: 250),
          child: Column(
            children: [
              const Text(
                'Người đẹp đi ăn',
                style: TextStyle(fontFamily: 'Coiny', fontSize: 20),
              ),
              const Text(
                'Một mình!',
                style: TextStyle(fontFamily: 'Coiny', fontSize: 26),
              ),
              const Text(
                'hay',
                style: TextStyle(fontFamily: 'Coiny', fontSize: 20),
              ),
              const Text(
                'Nhiều mình!',
                style: TextStyle(fontFamily: 'Coiny', fontSize: 26),
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonSound(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ResultScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    child: Text(
                      'Ơ lôn',
                      style: TextStyle(
                          fontFamily: 'Coiny',
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              ButtonSound(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ResultScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    child: Text(
                      '1 bầy',
                      style: TextStyle(
                          fontFamily: 'Coiny',
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
