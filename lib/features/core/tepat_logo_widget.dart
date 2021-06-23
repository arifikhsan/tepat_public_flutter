import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class TepatLogoWidget extends StatelessWidget {
  const TepatLogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HeroIcon(
          HeroIcons.lightningBolt,
          color: Theme.of(context).primaryColor,
          solid: true,
        ),
        const SizedBox(
          width: 2,
        ),
        const Text('Tepat'),
      ],
    );
  }
}
