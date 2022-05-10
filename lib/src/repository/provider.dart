import 'package:dio/dio.dart';
import 'package:insta_story/src/model/story_model.dart';

class Provider {
  final Dio _dio = Dio();
  final String BASE_URI = 'https://instagram-stories1.p.rapidapi.com/v2/';

  Future<StoryModel> fetchStory({required int id}) async {
    try {
      Response response = await _dio.get(BASE_URI + 'user_stories',
          queryParameters: {'userid': 1718924098},
          // 1718924098
          options: Options(headers: {
            'X-RapidAPI-Host': 'instagram-stories1.p.rapidapi.com',
            'X-RapidAPI-Key':
                '7577a4c0e3msh52c77f63014b0d2p18ab70jsn339c45f982ab'
          }));
      return StoryModel.fromJson(response.data);
    } catch (error, stacktrace) {
      return StoryModel.withError(error.toString());
    }
  }
}
