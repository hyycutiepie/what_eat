import 'package:flutter/material.dart';
import 'package:what_eat/helpers/image_helper.dart';
import 'package:what_eat/screens/feeling_screen.dart';
import 'package:what_eat/widgets/button_sound.dart';
import 'package:what_eat/widgets/layout.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Layout(
        backgroundImage: ImageHelper.man2,
        child: Padding(
          padding: const EdgeInsets.only(top: 250),
          child: Column(
            children: [
              const Text(
                'Thời tiết chỗ người đẹp',
                style: TextStyle(fontFamily: 'Coiny', fontSize: 20),
              ),
              const Text(
                'Dư lào!',
                style: TextStyle(fontFamily: 'Coiny', fontSize: 26),
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonSound(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FeelingScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    child: Text(
                      'Nắng vl',
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
                        builder: (context) => const FeelingScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    child: Text(
                      'Mưa lắm',
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
                        builder: (context) => const FeelingScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    child: Text(
                      'Méo bíc',
                      style: TextStyle(
                          fontFamily: 'Coiny',
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
