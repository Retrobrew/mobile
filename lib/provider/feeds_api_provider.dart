import 'package:dio/dio.dart';
import 'package:retrobrew/model/post.dart';
import 'package:retrofit/retrofit.dart';


part 'feeds_api_provider.g.dart';

@RestApi(baseUrl: 'https://api.retrobrew.fr/feeds')
abstract class FeedsApiProvider {
  factory FeedsApiProvider(Dio dio, {String baseUrl}) = _FeedsApiProvider;

  @GET('/home')
  Future<List<Post>> getHomeFeeds();

  @GET('/my')
  Future<List<Post>> getUserFeeds(@Header('Authorization') String token);

}
