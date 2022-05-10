import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_story/src/app.dart';
import 'package:insta_story/src/config/observer/app_bloc_observer.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(() => runApp(App()),
  blocObserver: AppBlocObserver());
}




