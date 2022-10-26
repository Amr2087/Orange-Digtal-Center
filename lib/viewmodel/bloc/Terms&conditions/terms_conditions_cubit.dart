import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc/constant.dart';
import 'package:odc/model/TermsModel.dart';
import 'package:odc/viewmodel/Database/network/dio_helper.dart';
import 'package:odc/viewmodel/Database/network/end_points.dart';

part 'terms_conditions_state.dart';

class TermsConditionsCubit extends Cubit<TermsConditionsState> {
  TermsConditionsCubit() : super(TermsConditionsInitial());
  TermsModel ? modelData;
static TermsConditionsCubit get(context) => BlocProvider.of(context);
  void getData(){

      DioHelper.getData(url: termsEndPoint, token: Token).then((value){
  if (value.statusCode == 200){
   modelData = TermsModel.fromJson(value.data);
   emit(TermsDataSuccess());
  }
});
  }
}
