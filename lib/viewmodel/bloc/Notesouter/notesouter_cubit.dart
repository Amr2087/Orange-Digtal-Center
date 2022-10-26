import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'notesouter_state.dart';

class NotesouterCubit extends Cubit<NotesouterState> {
  NotesouterCubit() : super(NotesouterInitial());
  static NotesouterCubit get(context) => BlocProvider.of(context);
}
