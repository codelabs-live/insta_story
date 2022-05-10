
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_story/src/bloc/story/story_event.dart';
import 'package:insta_story/src/bloc/story/story_state.dart';

import '../../repository/repository.dart';

class StoryBloc extends Bloc<StoryEvent,StoryState>{
  StoryBloc() : super(StoryInitial()){
    final Repository _apiRepository = Repository();

    on<GetStory>((event, emit) async{
      try{
        emit(StoryInitial());
        final data = await _apiRepository.fetchStory(id:event.id);
        print(data);
        emit(StoryLoaded(data));
        print(data);
        if(data.error != null){
          emit(StoryError(data.error));
        }
      }on NetworkError {
        emit(const StoryError("Failed to fetch data , is your device ?"));
      }
    });
  }
}