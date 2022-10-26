// import 'package:flutter/material.dart';
// import 'package:odc/view/pages/NewsPressed.dart';
//
// void main() {
//   runApp(News());
// }
//
// class News extends StatelessWidget {
//   const News({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: Colors.white,
//           centerTitle: true,
//           title: Text("News", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black)),
//         ),
//         body: SingleChildScrollView(
//           physics: BouncingScrollPhysics(),
//           child: Padding(
//             padding: const EdgeInsets.fromLTRB(10.0, 20, 10, 0),
//             child: Column(
//               children: [
//                Builder(
//                  builder: (context) {
//                    return InkWell(onTap: () {
//                      Navigator.push(context, MaterialPageRoute(builder: (context) {
//                        return NewP();
//                      },));
//                    },
//                    child:  Container(
//
//                      height: 300,
//                      child: Card(
//                        shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.circular(15.0),
//                        ),
//                        color: Colors.grey[400],
//                        child: Padding(
//                          padding: const EdgeInsets.all(10.0),
//                          child: Column(
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: [
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                children: [
//                                  Text("ODCs", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
//                                  Container(
//                                      width: 100,
//                                      height: 60,
//                                      child: Card(
//                                        shape: RoundedRectangleBorder(
//                                          borderRadius: BorderRadius.circular(15.0),
//                                        ),
//                                        color: Colors.deepOrange,
//                                        child: Padding(
//                                          padding: const EdgeInsets.all(10.0),
//                                          child: Row(
//                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                            children: [
//                                              Icon(Icons.share_outlined, color: Colors.white),
//                                              Container(
//                                                height: 20,
//                                                width: 2,
//                                                color: Colors.white,
//                                              ),
//                                              Icon(Icons.copy_rounded, color: Colors.white)
//                                            ],
//                                          ),
//                                        ),
//                                      )
//                                  ),
//                                ],
//                              ),
//                              Center(
//                                child: Image(
//                                  image: AssetImage('assets/logo.png'),
//                                ),
//                              ),
//
//                              Text("ODC Supports All Universities", style: TextStyle(color: Colors.white, fontSize: 20)),
//                            ],
//                          ),
//                        ),
//                      ),
//                    ),);
//                  }
//                )
//               ],
//             ),
//           ),
//         )
//       ),
//     );
//   }
// }



//



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:odc/viewmodel/bloc/News/news_cubit.dart';
import 'package:share/share.dart';

// import 'package:share_plus/share_plus.dart';

import 'Newinerr.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("News", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 20, 10, 0),
        child: BlocProvider(
          create: (context) => NewsCubit()..getNews(),
          child: BlocConsumer<NewsCubit, NewsState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              NewsCubit news = NewsCubit.get(context);
              return news.newsModel == null ? Center(
                child: CircularProgressIndicator(
                  color: Colors.deepOrange,
                ),
              )
                  :ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: news.newsModel!.data!.length,
                itemBuilder: (context, index) {
                  return Container(
                    // color: Colors.grey[300],
                    height: 250,
                    child: InkResponse(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NewInerr()),
                        );
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Stack(
                            children: [
                              Center(
                                child: Image.network(news.newsModel!.data![index].imageUrl.toString(),
                                  color: Colors.grey[300]!.withOpacity(0.8), colorBlendMode: BlendMode.modulate,),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(news.newsModel!.data![index].title.toString(),
                                    style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
                                  Container(
                                      width: 100,
                                      height: 60,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15.0),
                                        ),
                                        color: Colors.deepOrange,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkResponse(
                                                  onTap: () {
                                                    Share.share(news.newsModel!.data![index].linkUrl.toString());
                                                  },
                                                  child: Icon(Icons.share_outlined, color: Colors.white)),
                                              Container(
                                                height: 20,
                                                width: 2,
                                                color: Colors.white,
                                              ),
                                              InkResponse(
                                                  onTap: () {
                                                    Clipboard.setData(
                                                        ClipboardData(text: news.newsModel!.data![index].linkUrl.toString())).then((_) {
                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                          SnackBar(content: Text("Link copied successfullly"))
                                                      );
                                                    });

                                                  },
                                                  child: SvgPicture.asset("assets/copy.svg", color: Colors.white)
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(news.newsModel!.data![index].body.toString(),
                                      style: TextStyle(color: Colors.white, fontSize: 20))

                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
