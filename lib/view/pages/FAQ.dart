import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';


import 'package:odc/view/pages/Lastscreen.dart';
import 'package:simple_html_css/simple_html_css.dart';

import '../../viewmodel/bloc/FAQ/faq_cubit.dart';
class FAQ extends StatelessWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black),
          onPressed:
              () {
                    Navigator.pop(context);
              },
          ),
          title: Text("FAQ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25)),
        ),
      body:
      BlocProvider(
          create: (context) => FaqCubit()..getFaq(),
          child: BlocConsumer<FaqCubit, FaqState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                FaqCubit myCubit = FaqCubit.get(context);
                return Container(
                  padding: EdgeInsets.all(20),

                  child: myCubit.faqModel == null ? Center(child: CircularProgressIndicator(
                    color: Colors.deepOrange,
                  ))
                      :ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: myCubit.faqModel!.data!.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          InkResponse(
                              onTap: () {
                                myCubit.tapped();
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: RichText(text: HTML.toTextSpan(
                                            context,
                                            myCubit.faqModel!.data![index].question.toString(),
                                            defaultTextStyle: TextStyle(color: Colors.white),
                                            overrideStyle: <String, TextStyle>{
                                              'p': const TextStyle(
                                                  fontSize: 20),
                                              'a': const TextStyle(
                                                  wordSpacing: 1.5),
                                            }),
                                          // style: TextStyle(
                                          //     color: Colors.white,
                                          //     fontSize: 20
                                          // )
                                          textScaleFactor: 1.5,

                                        ),
                                      ),
                                      Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black,)
                                    ],
                                  ),
                                ),
                              )),
                          AnimatedContainer(

                            child: Center(
                              child: RichText(text: HTML.toTextSpan(
                                  context,
                                  myCubit.faqModel!.data![index].answer.toString(),
                                  defaultTextStyle: TextStyle(color: Colors.white),
                                  overrideStyle: <String, TextStyle>{
                                    'p': const TextStyle(
                                        fontSize: 20),
                                    'a': const TextStyle(
                                        wordSpacing: 1.5),
                                  }),

                                textScaleFactor: 1.5,

                              ),
                            ),

                            height: myCubit.height,
                            width: double.infinity,

                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20))
                            ),

                            duration: Duration(milliseconds: 600),
                          )
                        ],
                      );
                    },
                  ),
                );}))
        ,),
    );
  }

}
