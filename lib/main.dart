import 'package:flutter/material.dart';
import 'package:pokemon/serviece/dio/dio_helper.dart';
import 'package:pokemon/src/app_root.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(const AppRoot());
}



