import 'package:flutter/material.dart';

class CustomWeatherDetails extends StatelessWidget {
  const CustomWeatherDetails(
      {super.key,
      required this.image,
      required this.subtitle,
      required this.title});
  final String image;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        leading: Image(
          height: 50,
          width: 50,
          image: AssetImage(image),
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 15),
        ),
        subtitle: Text(subtitle),
      ),
    );
  }
}
