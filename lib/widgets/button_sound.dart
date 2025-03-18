import 'package:flutter/material.dart';
import 'package:what_eat/helpers/sound_helper.dart';
import 'package:what_eat/services/audio_services.dart';

class ButtonSound extends StatelessWidget {
  final Function onPressed;
  final ButtonStyle? btnStyle;
  final Widget child;

  const ButtonSound(
      {Key? key, required this.onPressed, this.btnStyle, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: btnStyle ??
          ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.white,
          ),
      onPressed: () {
        final audio = AudioService();
        audio.playSound(SoundHelper.click);
        onPressed();
      },
      child: child,
    );
  }
}
