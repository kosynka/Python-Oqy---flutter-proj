import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_python/cubit/app_cubit_logics.dart';
import 'package:learn_python/cubit/app_cubits.dart';
import 'package:learn_python/detail_page.dart';
import 'package:learn_python/nav_pages/main_page.dart';
import 'package:learn_python/services/data_services.dart';
import 'package:learn_python/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Python Oqy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(
          data: DataServices(),
        ),
        child: AppCubitLogics(),
      ),
    );
  }
}
