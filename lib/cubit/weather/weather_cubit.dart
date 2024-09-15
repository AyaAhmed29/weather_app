import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/cubit/weather/weather_state.dart';

// حالات الطقس


// الـ Cubit لإدارة الطقس
class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  Future<void> fetchWeather(Position position) async {
    emit(WeatherLoading());
    try {
      WeatherFactory wf = WeatherFactory('bc96a40975aac1086b0149cb7123265a',
          language: Language.ENGLISH);
      Weather weather = await wf.currentWeatherByLocation(
        position.latitude,
        position.longitude,
      );
      emit(WeatherSuccess(weather));
    } catch (e) {
      emit(WeatherFailure());
    }
  }
}
