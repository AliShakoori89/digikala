import 'package:digikala/models/TopStories.dart';
import 'package:flutter/material.dart';
import 'Pishnehad_Shegeftangiz.dart';

class ShegeftAngizCategorie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[700],
      height: 320,
      child: Stack(
        children: [
          CustomScrollView(
              reverse: true,
              scrollDirection: Axis.horizontal,
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                      return Column(
                        children: [
                          Expanded(
                            child: Padding(padding: EdgeInsets.only(top: 20.0 ,right: 20.0),
                              child: Container(
                                width: 130,
                                height: 250,
                                child: Image.asset('Assets/images2/pishnehad_shegeftangiz.png',fit: BoxFit.fill,),
                              ),),
                          ),
                          InkWell(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    child: Text('<  ' , style: TextStyle(color: Colors.white),),
                                  ),
                                  Text('مشاهده همه' , style: TextStyle(color: Colors.white),),
                                ],
                              )
                          )
                        ],
                      );
                    },
                    childCount: 1,
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          print(topstories.length);
                      return PishnehadShegeftAngiz(
                          topstore: topstories[index]);
                    },
                    childCount: topstories.length,),
                ),
              ]
          )
        ],
      ),
    );
  }
}
