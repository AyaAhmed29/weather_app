import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/widget/custom_weather_details.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, required this.data});
  final Weather data;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '📍${data.areaName} ',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const Text('Good Morning',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getWeatherIcon(data.hashCode),
                //    Image(
                //     image: AssetImage('assets/3.png'),
                //   ),
                Center(
                  child: Text(
                    '${data.tempFeelsLike!.celsius!.round()}',
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    data.weatherDescription!,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "${data.date!.hour}" ":${data.date!.minute}",
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                CustomWeatherDetails(
                  image: 'assets/11.png',
                  subtitle: '${data.sunrise!.hour}' ':${data.sunrise!.minute}',
                  title: 'sunrise',
                ),
                CustomWeatherDetails(
                  image: 'assets/12.png',
                  subtitle: '${data.sunset!.hour}' ':${data.sunset!.minute}',
                  title: 'sunset',
                ),
              ],
            ),
            Row(
              children: [
                CustomWeatherDetails(
                  image: 'assets/13.png',
                  subtitle: '${data.tempMax!.celsius!.round()}',
                  title: 'Max Temp',
                ),
                CustomWeatherDetails(
                  image: 'assets/14.png',
                  subtitle: '${data.tempMin!.celsius!.round()}',
                  title: 'Min Temp',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget getWeatherIcon(int code) {
  switch (code) {
    case >= 200 && < 300:
      return Image.asset('assets/1.png');
    case >= 300 && < 400:
      return Image.asset('assets/2.png');
    case >= 500 && < 600:
      return Image.asset('assets/3.png');
    case >= 600 && < 700:
      return Image.asset('assets/4.png');
    case >= 700 && < 800:
      return Image.asset('assets/5.png');
    case == 800:
      return Image.asset('assets/6.png');
    case > 800 && <= 804:
      return Image.asset('assets/7.png');
    default:
      return Image.asset('assets/7.png');
  }
}
