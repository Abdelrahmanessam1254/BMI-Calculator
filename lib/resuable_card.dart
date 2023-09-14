import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResusableCard extends StatelessWidget {
  Color colour;
  Widget cardChild;
  final VoidCallback onPress;

  ResusableCard(
      {Key? key,
      required this.colour,
      required this.cardChild,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}
