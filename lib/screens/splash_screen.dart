import 'package:flutter/material.dart';
import 'package:what_eat/helpers/image_helper.dart';
import 'package:what_eat/helpers/sound_helper.dart';
import 'package:what_eat/screens/weather_screen.dart';
import 'package:what_eat/services/audio_services.dart';
import 'package:what_eat/widgets/button_sound.dart';
import 'package:what_eat/widgets/layout.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Layout(
        backgroundImage: ImageHelper.man1,
        child: Padding(
          padding: const EdgeInsets.only(top: 250),
          child: Column(
            children: [
              const Text(
                'Bạn đang hông biết ăn gì',
                style: TextStyle(fontFamily: 'Coiny', fontSize: 20),
              ),
              const Text(
                'Phải hôngggg!',
                style: TextStyle(fontFamily: 'Coiny', fontSize: 26),
              ),
              const Text(
                'dễ lắm để tui chỉ cho',
                style: TextStyle(fontFamily: 'Coiny', fontSize: 16),
              ),
              const SizedBox(
                height: 40,
              ),
              ButtonSound(
                  btnStyle: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const WeatherScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    child: Text(
                      'Zoo',
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
