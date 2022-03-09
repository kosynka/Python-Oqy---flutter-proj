import 'package:equatable/equatable.dart';
import 'package:learn_python/model/data_model.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class LoadingState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class LoadedState extends CubitStates {
  LoadedState(this.lessons);
  final List<DataModel> lessons;

  @override
  List<Object?> get props => [lessons];
}

class DetailState extends CubitStates {
  DetailState(this.lesson);
  final DataModel lesson;

  @override
  List<Object?> get props => [lesson];
}
