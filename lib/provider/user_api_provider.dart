import 'dart:convert';

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import '../model/authentication.dart';
import '../model/profile.dart';

part 'user_api_provider.g.dart';


@RestApi(baseUrl: "https://api.retrobrew.fr/users")
abstract class UserApiProvider {

  factory UserApiProvider(Dio dio, {String baseUrl}) = _UserApiProvider;

  @POST('/')
  @Headers(<String, dynamic>{
    "Content-Type" : "application/json"
  })
  Future<Authentication> signUp(@Body() Authentication user);

  @GET("https://api.retrobrew.fr/profile/")
  Future<Profile> getMyProfile(@Header("Authorization") String token);

  @GET("/{uuid}")
  Future<Profile> getUserProfile(@Path("uuid") String uuid, @Header("Authorization") String token);

}