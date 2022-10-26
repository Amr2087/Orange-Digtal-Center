import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:odc/model/ExamsModel.dart';

import '../../../constant.dart';
import '../../../model/LectureModel.dart';
import '../../Database/network/dio_helper.dart';
import '../../Database/network/end_points.dart';

part 'finals_state.dart';

class FinalsCubit extends Cubit<FinalsState> {
  FinalsCubit() : super(FinalsInitial());
  static FinalsCubit get(context) => BlocProvider.of(context);

  ExamsModel ? modelData;

  void getFinals()async{
    await DioHelper.getData(url: examsEndPoint , token: Token).then((value) {
      modelData = ExamsModel.fromJson(value.data);
      debugPrint("\n\n\n\n");
      debugPrint(value.data.toString());
      debugPrint("\n\n\n\n");
      emit(FinalsDataSuccess());
    });

  }


}
