import 'package:dio/dio.dart' hide Headers;
import 'package:retrobrew/model/login.dart';
import 'package:retrofit/retrofit.dart';

import '../model/authentication.dart';

part 'user_api_provider.g.dart';


@RestApi(baseUrl: "https://api.retrobrew.fr/users")
abstract class UserApiProvider {

  factory UserApiProvider(Dio dio) = _UserApiProvider;

  @POST('/')
  @Headers(<String, dynamic>{
    "Content-Type" : "application/json"
  })
  Future<Authentication> signUp(@Body() Authentication user);

}