import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_python/model/data_model.dart';
import 'package:learn_python/services/data_services.dart';
import 'app_cubit_states.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }

  final DataServices data;
  late final lessons;

  void getData() async {
    try {
      emit(LoadingState());

      lessons = await data.getInfo();
      emit(LoadedState(lessons));
    } catch (e) {}
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }
}