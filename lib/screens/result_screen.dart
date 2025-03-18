import 'dart:math';

import 'package:flutter/material.dart';
import 'package:what_eat/helpers/image_helper.dart';
import 'package:what_eat/models/food_models.dart';
import 'package:what_eat/screens/splash_screen.dart';
import 'package:what_eat/services/audio_services.dart';
import 'package:what_eat/services/food_services.dart';
import 'package:lottie/lottie.dart';
import 'package:what_eat/widgets/button_sound.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  bool _isLoading = false;
  FoodModels? _selectedFood;

  @override
  void initState() {
    _selectedFood = foods.first;
    _isLoading = true;
    super.initState();
  }

  void _setLoading(bool status) {
    if (_isLoading != status) {
      setState(() {
        _isLoading = status;
      });
    }
  }

  _pickupFood() {
    _setLoading(true);
    Future.delayed(const Duration(seconds: 1), () {
      _setLoading(false);
      final int randomIndex = Random().nextInt(foods.length);
      setState(() {
        _selectedFood = foods[randomIndex];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned.fill(
                child: Lottie.asset('assets/lottie/chucmung.json',
                    height: double.infinity)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                const Text(
                  'Hôm nay người đẹp ăn.....',
                  style: TextStyle(fontFamily: 'Coiny', fontSize: 20),
                ),
                const SizedBox(height: 50),
                if (_isLoading)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      fit: BoxFit.contain,
                      ImageHelper.loadingFood,
                      width: 250,
                      height: 250,
                    ),
                  )
                else
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          _selectedFood?.imageUrl ?? '',
                          width: 250,
                          height: 250,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        '${_selectedFood?.name} nè',
                        style:
                            const TextStyle(fontFamily: 'Coiny', fontSize: 28),
                      ),
                    ],
                  ),
                const SizedBox(height: 40),
                const Text(
                  'Nhấp vô đây để biết ăn gì nè',
                  style: TextStyle(fontFamily: 'Coiny', fontSize: 20),
                ),
                const SizedBox(height: 40),
                ButtonSound(
                  btnStyle: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffFFAD0D),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: _pickupFood,
                  child: const Text(
                    'Nhấp vô đeeeeee',
                    style: TextStyle(
                        fontFamily: 'Coiny', fontSize: 16, color: Colors.black),
                  ),
                ),
                const SizedBox(height: 20),
                ButtonSound(
                  btnStyle: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFF34C85E),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const SplashScreen()),
                        (route) => false);
                  },
                  child: const Text(
                    'Về hôm nào =))',
                    style: TextStyle(
                        fontFamily: 'Coiny', fontSize: 16, color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
