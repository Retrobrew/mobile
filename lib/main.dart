import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retrobrew/bloc/authentication_bloc.dart';
import 'package:retrobrew/bloc/post_bloc.dart';
import 'package:retrobrew/helper/routes.dart';
import 'package:retrobrew/provider/authentication_api_provider.dart';
import 'package:retrobrew/provider/post_api_provider.dart';
import 'package:retrobrew/provider/user_api_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            lazy: false,
            create: (context) => AuthenticationBloc(
                AuthenticationApiProvider(Dio()), UserApiProvider(Dio())),
          ),
          BlocProvider(
            lazy: false,
            create: (context) => PostsBloc(PostApiProvider(Dio())),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          initialRoute: '/',
          routes: Routes.navigation,
          theme: ThemeData(
            primarySwatch: Colors.deepPurple,
          ),
        ));
  }
}
