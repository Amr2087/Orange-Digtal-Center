import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../constant.dart';
import '../../../model/SectionsModel.dart';
import '../../Database/network/dio_helper.dart';
import '../../Database/network/end_points.dart';

part 'sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit() : super(SectionsInitial());
  static SectionsCubit get(context) => BlocProvider.of(context);

  SectionsModel ? modelData;

  void getSections()async{
    await DioHelper.getData(url: sectionEndPoint , token: Token).then((value) {
      modelData = SectionsModel.fromJson(value.data);
      debugPrint("\n\n\n\n");
      debugPrint(value.data.toString());
      debugPrint("\n\n\n\n");
      emit(SectionsDataSuccess());
    });

  }


}