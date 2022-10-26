import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'lastscreen_state.dart';

class LastscreenCubit extends Cubit<LastscreenState> {
  LastscreenCubit() : super(LastscreenInitial());
  static LastscreenCubit get(context) => BlocProvider.of(context);
}
