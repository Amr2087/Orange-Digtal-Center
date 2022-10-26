import 'package:flutter/cupertino.dart';
import 'package:simple_html_css/simple_html_css.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc/viewmodel/bloc/Terms&conditions/terms_conditions_cubit.dart';

class Terms extends StatelessWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TermsConditionsCubit()..getData(),
      child: BlocConsumer<TermsConditionsCubit, TermsConditionsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          TermsConditionsCubit myCubit = TermsConditionsCubit.get(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: SafeArea(
                  child: myCubit.modelData == null ?  Center(child: CircularProgressIndicator(color: Colors.white,)):
                      Center(
                        child: Container(
                         child:
                            RichText(
                                text: HTML.toTextSpan(context, myCubit.modelData!.data!.terms.toString(),defaultTextStyle: TextStyle(fontSize: 12))

                            )
                        ),
                      )

                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
