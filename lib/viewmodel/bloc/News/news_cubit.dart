import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc/constant.dart';
import 'package:odc/model/NewsModel.dart';
import 'package:odc/viewmodel/Database/network/dio_helper.dart';
import 'package:odc/viewmodel/Database/network/end_points.dart';


part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  static NewsCubit get(context) => BlocProvider.of(context);

  NewsModel ?newsModel;

  void getNews()async{
    await DioHelper.getData(url: newsEndPoint, token: Token).then((value) async{
      newsModel = NewsModel.fromJson(value.data);
      emit(NewsSuccess());
    });
  }
}
