import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter_weather/models/models.dart';

// 4 possible states:
// WeatherInitial - our initial state which will have no weather data because the user has not yet selected a city
// WeatherLoadInProgress - a state which will occur while we are fetching the weather for a given city
// WeatherLoadSuccess - a state which will occur if we were able to successfully fetch weather for a given city.
// WeatherLoadFailure - a state which will occur if we were unable to fetch weather for a given city.

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoadInProgress extends WeatherState {}

class WeatherLoadSuccess extends WeatherState {
  final WeatherData weather;

  const WeatherLoadSuccess({@required this.weather}) : assert(weather != null);

  @override
  List<Object> get props => [weather];
}

class WeatherLoadFailure extends WeatherState {}
