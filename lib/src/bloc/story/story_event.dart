
import 'package:equatable/equatable.dart';

abstract class StoryEvent extends Equatable{
  List<Object> get props =>[];


}
class GetStory extends StoryEvent{
  final int id;
  GetStory({required this.id});
}