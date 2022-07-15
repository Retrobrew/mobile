import 'package:dio/dio.dart';
import 'package:retrobrew/model/post.dart';
import 'package:retrofit/retrofit.dart';

part 'post_api_provider.g.dart';


@RestApi(baseUrl: 'https://api.retrobrew.fr/posts')
abstract class PostApiProvider {
  factory PostApiProvider(Dio dio, {String baseUrl}) = _PostApiProvider;

    @GET('/')
    Future<List<Post>> getPosts(@Header("Authorization") String token);

    @GET('/{uuid}')
    Future<Post> getPost(@Path("uuid") String uuid, @Header("Authorization") String token);

    @POST('/')
    Future<Post> addPost(@Header("Authorization") String token, @Body() Post post);

    @GET('/{uuid}/comments')
    Future<List<Post>> getAllComments(@Path("uuid") String uuid, @Header("Authorization") String token);

    @POST('/{uuid}/comment')
    Future<void> postComment(@Path("uuid") String uuid, @Header("Authorization") String token, @Body() Post content);

}