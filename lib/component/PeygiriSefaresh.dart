import 'package:digikala/models/RavandSefareshat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class PeygiriSefaresh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
          reverse: true,
          scrollDirection: Axis.horizontal,
          itemCount: orders.length,
          itemBuilder: (context,index) => BuildCategory(
            ravandSefareshat: orders[index],
          ),
        )
    );
  }
}

class BuildCategory extends StatelessWidget{
  final RavandSefareshat ravandSefareshat;
  final Function press;

  const BuildCategory({Key key, this.ravandSefareshat, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: [
                (AssetImage(ravandSefareshat.image) != AssetImage("Assets/images5/marju_shode.jpg"))?
                Container(
                  height: 100,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  color: Colors.grey[200].withOpacity(1),
                  width: 2,
                ):Container(),
                SizedBox(width: 10.0,),
                Column(
                  children:<Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                              alignment: Alignment.topCenter,
                              image: AssetImage(ravandSefareshat.image)
                          )
                      ),
                    ),
                    Text('${ravandSefareshat.title}',style: TextStyle(fontSize: 11.0),),
                  ],
                ),
              ],
            )
        )
    );
  }

}