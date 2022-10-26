import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../constant.dart';
import '../../../model/LectureModel.dart';
import '../../Database/network/dio_helper.dart';
import '../../Database/network/end_points.dart';

part 'lecture_state.dart';

class LectureCubit extends Cubit<LectureState> {
LectureCubit() : super(LectureInitial());
static LectureCubit get(context) => BlocProvider.of(context);

LectureModel ? modelData;

void getLectures()async{
  await DioHelper.getData(url: lectureEndPoint , token: Token).then((value) {
    modelData = LectureModel.fromJson(value.data);
    debugPrint("\n\n\n\n");
    debugPrint(value.data.toString());
    debugPrint("\n\n\n\n");
    emit(LectureDataSuccess());
  });

}


}
