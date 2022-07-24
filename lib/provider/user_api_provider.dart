import 'dart:convert';

import 'package:dio/dio.dart' hide Headers;
import 'package:retrobrew/model/friend_request.dart';
import 'package:retrofit/retrofit.dart';

import '../model/authentication.dart';
import '../model/profile.dart';

part 'user_api_provider.g.dart';


@RestApi(baseUrl: "https://api.retrobrew.fr/users")
abstract class UserApiProvider {

  factory UserApiProvider(Dio dio, {String baseUrl}) = _UserApiProvider;

  @FormUrlEncoded()
  @POST('/')
  @Headers(<String, dynamic>{
    "Content-Type" : "application/json"
  })
  Future<Authentication> signUp(@Body() Authentication user);

  @GET("https://api.retrobrew.fr/profile/")
  Future<Profile> getMyProfile(@Header("Authorization") String token);

  @GET("/{uuid}")
  Future<Profile> getUserProfile(@Path("uuid") String uuid, @Header("Authorization") String token);

  @GET('https://api.retrobrew.fr/friendRequests/received')
  Future<List<FriendRequest>> getFriendRequestReceived(@Header("Authorization") String token);

  @POST('https://api.retrobrew.fr/friendRequests/received/{uuid}/accept')
  Future<void> sendAcceptFriend(@Header("Authorization") String token, @Path("uuid") String uuid);

  @POST('https://api.retrobrew.fr/friendRequests/received/{uuid}/decline')
  Future<void> sendDeclineFriend(@Header("Authorization") String token, @Path("uuid") String uuid);

  @GET('https://api.retrobrew.fr/my/friends')
  Future<List<Profile>> getMyFriends(@Header("Authorization") String token);

}