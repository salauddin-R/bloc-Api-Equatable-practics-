import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practices_bloc_restapi_equateable/Presentation/Bloc/BlocEvent.dart';
import 'package:practices_bloc_restapi_equateable/Presentation/Screen/HomePage.dart';
import 'Presentation/Bloc/BlocPage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create:(context)=>BlocPage()..add(getUserData()),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
    );
  }
}
