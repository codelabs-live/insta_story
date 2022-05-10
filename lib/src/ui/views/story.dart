import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_story/src/bloc/story/story_event.dart';
import 'package:insta_story/src/bloc/story/story_state.dart';

import '../../bloc/story/story_bloc.dart';

class Story extends StatefulWidget {
  final int id;

  Story({Key? key, required this.id}) : super(key: key);

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  StoryBloc _storyBloc = StoryBloc();

  @override
  void initState() {
    // TODO: implement initState
    _storyBloc.add(GetStory(id: widget.id));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => _storyBloc,

      child: BlocListener<StoryBloc, StoryState>(
        listener: (BuildContext context, state) {

        },

        child: BlocBuilder<StoryBloc, StoryState>(
          builder: (BuildContext context, state) {
            if (state is StoryInitial) {
              return Container();
            } else if (state is StoryLoading) {
              return Scaffold(
                body: Center(child: CircularProgressIndicator(),),
              );
            } else if (state is StoryLoaded) {
              return Scaffold(
                body: Center(
                  child: Text(state.storyModel.downloadLinks.toString()),
                ),
              );
            } else {
              return Container();
            }
          },),
      ),);
  }
}
