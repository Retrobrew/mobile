import 'package:dio/dio.dart';
import '../model/post.dart';
import 'package:retrofit/retrofit.dart';

import '../model/groups.dart';

part 'groups_api_provider.g.dart';


@RestApi(baseUrl: "https://api.retrobrew.fr/groups")
abstract class GroupsApiProvider {

  factory GroupsApiProvider(Dio dio, {String baseUrl}) = _GroupsApiProvider;

  @GET('/')
  Future<List<Groups>> getAllGroups(@Header("Authorization") String token);

  @GET('https://api.retrobrew.fr/my/groups')
  Future<List<Groups>> getMyGroups(@Header("Authorization") String token);

  @GET('https://api.retrobrew.fr/feeds/group/{uuid}')
  Future<List<Post>> getPosts(@Path('uuid') String? uuid, @Header("Authorization") String token);

  @POST('/{uuid}/quit')
  Future<void> leave(@Path('uuid') String uuid, @Header("Authorization") String token);

  @POST('/{uuid}/join')
  Future<void> join(@Path('uuid') String uuid, @Header("Authorization") String token);

}