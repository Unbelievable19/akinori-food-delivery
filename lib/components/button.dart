import 'package:flutter/material.dart';

class FoodButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const FoodButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
    );
  }

}
