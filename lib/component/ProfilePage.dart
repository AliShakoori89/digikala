import 'package:digikala/Icon/address_icons.dart';
import 'package:digikala/Icon/comment.dart';
import 'package:digikala/component/PeygiriSefaresh.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {

  String walletmoneys = '1000';
  String coin = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 200.0,
                  child: AppBar(
                    backgroundColor: Colors.grey[100],
                    flexibleSpace:
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 50.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Icon(Icons.add_alert ,color: Colors.grey[700]),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(Icons.settings ,color: Colors.grey[700]),
                              )
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 40.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 50.0),
                                          child: InkWell(
                                              child: Container(
                                                width: 50.0,
                                                height: 50.0,
                                                child: Image.asset('Assets/images4/walletimage.png',),
                                              )
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(left: 50.0),
                                            child: Row(
                                              children: [
                                                Text('تومان', style: TextStyle(color: Colors.grey[700]),),
                                                Text(walletmoneys.toPersianDigit().seRagham(), style: TextStyle(color: Colors.grey[700]),),
                                              ],
                                            )
                                        )
                                      ],
                                    ),
                                    Container(
                                      height: 65,
                                      margin: const EdgeInsets.symmetric(vertical: 10),
                                      color: Colors.grey[300].withOpacity(1),
                                      width: 2,
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 50.0, top: 20.0),
                                          child: InkWell(
                                              child: Container(
                                                width: 30.0,
                                                height: 30.0,
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.amberAccent,
                                                  child: Text('DG',style: TextStyle(color: Colors.amber[800]),),
                                                ),
                                              )
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(right: 50.0, top: 5.0),
                                            child: Row(
                                              children: [
                                                Text('امتیاز', style: TextStyle(color: Colors.grey[700]),),
                                                SizedBox(width: 4.0,),
                                                Text(coin.toPersianDigit(), style: TextStyle(color: Colors.grey[700]),),
                                              ],
                                            )
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 7.0,
                  color: Colors.grey[300],
                ),
                Container(
                    height: 160.0,
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 10.0, right: 20.0),
                            child: Align(
                                alignment: Alignment.topRight,
                                child: Text('سفارشات من', style: TextStyle(fontSize: 17),)
                            )
                        ),
                        PeygiriSefaresh(),
                      ],
                    )
                ),
                SizedBox(height: 10.0,),
                Container(
                  width: 700.0,
                  height: 150.0,
                  child: Image.asset("Assets/images5/1.jpg"),
                ),
                SizedBox(height: 20.0,),
                Padding(
                  padding: EdgeInsets.only(right: 5.0),
                  child: InkWell(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.arrow_back_ios),
                            SizedBox(width: 200.0,),
                            Text('لیست مورد علاقه من'),
                            SizedBox(width: 20.0,),
                            Icon(Icons.favorite_border),
                          ]
                      )
                  ),
                ),
                SizedBox(height: 20.0,),
                Padding(
                  padding: EdgeInsets.only(right: 9.0),
                  child: InkWell(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.arrow_back_ios),
                            SizedBox(width: 242.0,),
                            Text('نقد و نظرات'),
                            SizedBox(width: 14.0,),
                            Icon(Comment.comment, size: 20.0,),
                          ]
                      )
                  ),
                ),
                SizedBox(height: 20.0,),
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: InkWell(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.arrow_back_ios),
                            SizedBox(width: 260.0,),
                            Text('آدرس ها'),
                            SizedBox(width: 20.0,),
                            Icon(Address.map_signs),
                          ]
                      )
                  ),
                ),
                SizedBox(height: 20.0,),
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: InkWell(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.arrow_back_ios),
                            SizedBox(width: 230.0,),
                            Text('کارت های هدیه'),
                            SizedBox(width: 20.0,),
                            Icon(Icons.credit_card),
                          ]
                      )
                  ),
                ),
                SizedBox(height: 20.0,),
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: InkWell(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.arrow_back_ios),
                            SizedBox(width: 194.0,),
                            Text('اطلاعات حساب کاربری'),
                            SizedBox(width: 25.0,),
                            Icon(Icons.person_outline),
                          ]
                      )
                  ),
                ),
                SizedBox(height: 10.0,),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                      width: 700.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                              image: AssetImage("Assets/images5/2.jpg"),
                              fit: BoxFit.fill
                          )
                      )
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
