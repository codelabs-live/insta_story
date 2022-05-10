import 'package:equatable/equatable.dart';

import '../../model/story_model.dart';

class StoryState extends Equatable {
  const StoryState({this.id});

  final String? id;

  List<Object> get props => [id.toString()];
}

class StoryInitial extends StoryState {}

class StoryLoading extends StoryState {}

class StoryLoaded extends StoryState {
  final StoryModel storyModel;

  const StoryLoaded(this.storyModel);
}

class StoryError extends StoryState {
  final String? message;

  const StoryError(this.message);
}
