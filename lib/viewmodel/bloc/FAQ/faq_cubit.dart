import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constant.dart';
import '../../../model/FaqModel.dart';
import '../../Database/network/dio_helper.dart';
import '../../Database/network/end_points.dart';
part 'faq_state.dart';


class FaqCubit extends Cubit<FaqState> {
  FaqCubit() : super(FaqInitial());
  static FaqCubit get(context) => BlocProvider.of(context);

  double height = 0;
  bool shrinked = true;
  FaqModel ?faqModel;

  void getFaq()async{
    await DioHelper.getData(url: faqEndPoint, token: Token).then((value) async {
      faqModel = FaqModel.fromJson(value.data);
      emit(FaqSuccess());
    });
  }

  void tapped(){
    if(shrinked){
      height = 50;
      shrinked = false;
    }
    else {
      height = 0;
      shrinked = true;
    }

    emit(FaqInitial());
  }

}

