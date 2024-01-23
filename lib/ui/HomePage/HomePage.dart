import 'dart:convert';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';

import '../RepeatedFunction/repttext.dart';
import '../RepeatedFunction/searchbarfunc.dart';
import '../SectionHomeUi/movie.dart';
import '../SectionHomeUi/tvseries.dart';
import '../SectionHomeUi/upcomming.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  List<Map<String, dynamic>> trendingweek = [];
  int uval = 1;
  // Future<void> trendinglist(int checkerno) async {
  //   if (checkerno == 1) {
  //     var trendingweekurl =
  //         'https://api.themoviedb.org/3/trending/all/week?api_key=$apikey';
  //     var trendingweekresponse = await http.get(Uri.parse(trendingweekurl));
  //     if (trendingweekresponse.statusCode == 200) {
  //       var tempdata = jsonDecode(trendingweekresponse.body);
  //       var trendingweekjson = tempdata['results'];
  //       for (var i = 0; i < trendingweekjson.length; i++) {
  //         trendingweek.add({
  //           'id': trendingweekjson[i]['id'],
  //           'poster_path': trendingweekjson[i]['poster_path'],
  //           'vote_average': trendingweekjson[i]['vote_average'],
  //           'media_type': trendingweekjson[i]['media_type'],
  //           'indexno': i,
  //         });
  //       }
  //     }
  //   } else if (checkerno == 2) {
  //     var trendingweekurl =
  //         'https://api.themoviedb.org/3/trending/all/day?api_key=$apikey';
  //     var trendingweekresponse = await http.get(Uri.parse(trendingweekurl));
  //     if (trendingweekresponse.statusCode == 200) {
  //       var tempdata = jsonDecode(trendingweekresponse.body);
  //       var trendingweekjson = tempdata['results'];
  //       for (var i = 0; i < trendingweekjson.length; i++) {
  //         trendingweek.add({
  //           'id': trendingweekjson[i]['id'],
  //           'poster_path': trendingweekjson[i]['poster_path'],
  //           'vote_average': trendingweekjson[i]['vote_average'],
  //           'media_type': trendingweekjson[i]['media_type'],
  //           'indexno': i,
  //         });
  //       }
  //     }
  //   }
  //   // print(trendingweek);
  // }

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
        backgroundColor: Color.fromRGBO(18, 18, 18, 0.5),
        body: CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
          //////////////////////////////////////////////End of Flexible bar///////////////////////////////////////////////////////////////
          SliverList(
              delegate: SliverChildListDelegate([
            searchbarfun(),
            Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                child: TabBar(
                    physics: BouncingScrollPhysics(),
                    labelPadding: EdgeInsets.symmetric(horizontal: 25),
                    isScrollable: true,
                    controller: _tabController,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.amber.withOpacity(0.4)),
                    tabs: [
                      Tab(child: Tabbartext('Tv Series')),
                      Tab(child: Tabbartext('Peliculas')),
                      Tab(child: Tabbartext('Próximamente'))
                    ])),
            Container(
                height: 1100,
                width: MediaQuery.of(context).size.width,
                child: TabBarView(controller: _tabController, children: const [
                  TvSeries(),
                  Movie(),
                  Upcomming(),
                ]))
          ]))
        ]));
  }
}
