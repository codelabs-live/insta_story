import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_story/src/bloc/story/story_bloc.dart';
import 'package:insta_story/src/bloc/story/story_event.dart';
import 'package:insta_story/src/bloc/story/story_state.dart';
import 'package:insta_story/src/ui/views/story.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _id = TextEditingController();
  // StoryBloc _storyBloc = StoryBloc();

  getStory() {
    setState(() {
      // _storyBloc.add(GetStory(id: int.parse(_id.text.trim().toString())));
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Story(id:int.parse(_id.text.toString().trim()))));
    });
    // print()
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          width: size.width * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: size.height * 0.05,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(color: Colors.black26),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(5))),
                  child: TextField(
                    controller: _id,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    keyboardType: TextInputType.numberWithOptions(
                        signed: false, decimal: false),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(3),
                      border: InputBorder.none,
                      hintText: 'ID',
                    ),
                  )),
              SizedBox(
                height: size.height * 0.01,
              ),
              ElevatedButton.icon(
                  onPressed: getStory,
                  icon: Icon(Icons.next_plan_rounded),
                  label: Text('Get Story'))
            ],
          ),
        ),
      ),
    );
  }
}
