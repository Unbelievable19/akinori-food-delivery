import 'package:flutter/material.dart';
import '../models/food.dart';

class FoodTitle extends StatelessWidget {
  final Food food;

  const FoodTitle({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              food.image,
              height: 140,
            ),
            Text(
              food.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 160,
              height: 40,
              child: Text(food.price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center),
            )
          ],
        ),
      ),
    );
  }
}
