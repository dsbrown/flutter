import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/widgets/widgets.dart';
import 'package:flutter_weather/blocs/blocs.dart';

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Weather'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              final city = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CitySelection(),
                ),
              );
              if (city != null) {
                BlocProvider.of<WeatherBloc>(context)
                    .add(WeatherRequested(city: city));
              }
            },
          )
        ],
      ),
      body: Center(
        child: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            final textTheme = Theme.of(context).textTheme;

            if (state is WeatherInitial) {
              return Center(
                  child: Text(
                'Please Select a Location',
                style: textTheme.headline2,
                textAlign: TextAlign.center,
              ));
            }
            if (state is WeatherLoadInProgress) {
              return Center(child: CircularProgressIndicator());
            }
            if (state is WeatherLoadSuccess) {
              final weather = state.weather;
              final _foobar = Location(location: weather.location);
              print('Final Weather State: $state');
              print('Weather props: ${state.weather.props}');
              print('Weather location: ${state.weather.location}');
              print('Weather location field: ${_foobar}');
              return (ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Container(
                    height: 50,
                    color: Colors.blue[400],
                    child: Location(location: weather.location),
                  ),
                  Container(
                    color: Colors.blue[500],
                    child: CombinedWeatherTemperature(
                      weather: weather,
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    height: 50,
                    color: Colors.blue[600],
                    child: LastUpdated(dateTime: weather.lastUpdated),
                  ),
                ],
              ));
              // return ListView(
              //   children: <Widget>[
              //     Padding(
              //       padding: EdgeInsets.only(top: 100.0),
              //       child: Center(
              //         //child: Location(location: weather.location),
              //         child: Text(
              //           state.weather.location,
              //           style: TextStyle(
              //             fontSize: 30,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.white,
              //           ),
              //         ),
              //       ),
              //     ),
              //     Center(
              //       child: LastUpdated(dateTime: weather.lastUpdated),
              //     ),
              //     Padding(
              //       padding: EdgeInsets.symmetric(vertical: 50.0),
              //       child: Center(
              //         child: CombinedWeatherTemperature(
              //           weather: weather,
              //         ),
              //       ),
              //     ),
              //   ],
              // );
            }
            if (state is WeatherLoadFailure) {
              return Text(
                'Something went wrong!',
                style: TextStyle(color: Colors.red),
              );
            }
          },
        ),
      ),
    );
  }
}
