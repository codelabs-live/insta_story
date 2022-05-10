import 'package:insta_story/src/model/story_model.dart';
import 'package:insta_story/src/repository/provider.dart';

class Repository {
  final _provider = Provider();

  Future<StoryModel> fetchStory({required int id}) {
    return _provider.fetchStory(id: id);
  }
}

class NetworkError extends Error {}
