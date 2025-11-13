import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/bloc/weather_bloc_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget getWeatherIcon(int code) {
    switch (code) {
      case > 200 && <= 300:
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0), // Padding at the top
            child: Lottie.asset('assets/thunder.json'),
          ),
        );
      case > 300 && <= 321:
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0), // Padding at the top
            child: Lottie.asset('assets/Drizzle.json'),
          ),
        );
      case > 500 && <= 531:
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0), // Padding at the top
            child: Lottie.asset('assets/Heavy Rain.json'),
          ),
        );
      case > 600 && <= 622:
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0), // Padding at the top
            child: Lottie.asset('assets/Snow.json'),
          ),
        );
      case > 700 && <= 781:
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0), // Padding at the top
            child: Lottie.asset('assets/windy.json'),
          ),
        );
      case > 800 && <= 804:
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0), // Padding at the top
            child: Lottie.asset('assets/Sun&Cloud.json'),
          ),
        );
      case 800:
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0), // Padding at the top
            child: Lottie.asset('assets/Sunny.json'),
          ),
        );

      default:
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0), // Padding at the top
            child: Lottie.asset('assets/Sunny.json'),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark)),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(3, -0.3),
                child: Container(
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple,
                    )),
              ),
              Align(
                alignment: const AlignmentDirectional(-3, -0.3),
                child: Container(
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple,
                    )),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.2),
                child: Container(
                    height: 300,
                    width: 600,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 162, 12),
                    )),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 70.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
              BlocBuilder<WeatherBlocBloc, WeatherBlocState>(
                builder: (context, state) {
                  if (state is WeatherBlocSuccess) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '📍 ${state.weather.areaName}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Welcome, How you doing today?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          getWeatherIcon((state.weather.weatherConditionCode!)),
                          // Center(
                          //child: Padding(
                          // padding: const EdgeInsets.only(
                          // top: 10.0), // Padding at the top
                          //child: Lottie.asset('assets/thunder.json'),
                          // ),
                          // ),
                          Center(
                            child: Text(
                              '${state.weather.temperature!.celsius!.round()}°C',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 55,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Center(
                            child: Text(
                              state.weather.weatherMain!.toUpperCase(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Center(
                            child: Text(
                              DateFormat('EEEE dd |')
                                  .add_jm()
                                  .format(state.weather.date!),
                              //'Friday 16 | 09.41am',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          const SizedBox(height: 90),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/13.png',
                                    scale: 23,
                                  ),
                                  const SizedBox(width: 5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Sunrise',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ), // Text
                                      const SizedBox(height: 3),
                                      Text(
                                        DateFormat()
                                            .add_jm()
                                            .format(state.weather.sunrise!),
                                        //'5:34 am',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ), // Text
                                    ],
                                  ), // Column
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/10.png',
                                    scale: 23,
                                  ),
                                  const SizedBox(width: 5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Sunset',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ), // Text
                                      const SizedBox(height: 3),
                                      Text(
                                        DateFormat()
                                            .add_jm()
                                            .format(state.weather.sunset!),
                                        //'5:34 pm',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ), // Text
                                    ],
                                  ), // Column
                                ],
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                            child: Divider(
                              color: Colors.grey,
                              thickness: 0.3,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/11.png',
                                    scale: 23,
                                  ),
                                  const SizedBox(width: 5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Temp Max',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ), // Text
                                      const SizedBox(height: 3),
                                      Text(
                                        "${state.weather.tempMax!.celsius!.round()}°C",
                                        // '21°C',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ), // Text
                                    ],
                                  ), // Column
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/12.png',
                                    scale: 23,
                                  ),
                                  const SizedBox(width: 5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Temp Min',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ), // Text
                                      const SizedBox(height: 3),
                                      Text(
                                        "${state.weather.tempMin!.celsius!.round()}°C",
                                        //'21°C',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ), // Text
                                    ],
                                  ), // Column
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
