import 'package:dio/dio.dart' hide Headers;
import 'package:retrobrew/model/login.dart';
import 'package:retrofit/retrofit.dart';

import '../model/authentication.dart';

part 'authentication_api_provider.g.dart';


@RestApi(baseUrl: "https://api.retrobrew.fr/auth/login")
abstract class AuthenticationApiProvider {

  factory AuthenticationApiProvider(Dio dio) = _AuthenticationApiProvider;

  @POST('/')
  @Headers(<String, dynamic>{
    "Content-Type" : "application/json"
  })
  Future<Authentication> getToken(
      @Body() Login login);

}