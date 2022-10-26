import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'ourpartners_state.dart';

class OurpartnersCubit extends Cubit<OurpartnersState> {
  OurpartnersCubit() : super(OurpartnersInitial());
  static OurpartnersCubit get(context) => BlocProvider.of(context);
}
