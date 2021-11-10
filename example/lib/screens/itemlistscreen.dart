import 'package:arcore_flutter_plugin_example/models/itemmodel.dart';
import 'package:arcore_flutter_plugin_example/screens/arviewscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class ItemListScreen extends StatelessWidget {
List<ItemModel> items=[
  ItemModel(
    'Double Bed',
        'Double Bed with 2 Lamps',
        'items/bed.png',
    52000,
  ),
  ItemModel(
    'Sofa',
    'White Sofa for your Home',
    'items/sofa_white.png',
    32000,
  ),
  ItemModel(
    'Double Sofa',
    'Three Seater branded Sofa',
    'items/sofa_yellow.png',
    44000,
  ),
  ItemModel(
    'Brown Chair',
    'A Small Chair for your Backyard',
    'items/pc_table.png',
    12000,
  ),
  ItemModel(
    'G78 Single Sofa',
    'Brande Yellow SOfa',
    'items/single_sofa.png',
    32000,
  ),
  ItemModel(
    'Dinning Table',
    'A perfect Dining table for 6',
    'items/dinner_table.png',
    30000,
  ),
  ItemModel(
    'PC Table',
    'A perfect PC Table for your room',
    'items/pc_table2.png',
    46000,
  ),
  ItemModel(
    'Short Chair',
    'A perfect Chair for your room',
    'items/chair2.png',
    6000,
  ),
  ItemModel(
    'Wodden Table',
    'A perfect Wodden Table for your room',
    'items/table.png',
    16000,
  ),
  ItemModel(
    'Thai Double Bed',
    'A Luxrious bed',
    'items/bed_double.png',
    46000,
  ),
  ItemModel(
    'Rotatable Chair',
    'A perfect PC Chair for your room',
    'items/rot_chair.png',
    20000,
  ),
  ItemModel(
    'UK5 Sofa',
    'A Comfortable Sofa',
    'items/sofa_uk.png',
    33000,
  ),
  ItemModel(
    'T80 Dinner Table',
    'A perfect Dinner Table for your family',
    'items/dinner_table2.png',
    40000,
  ),
  ItemModel(
    '2 Seat Sofa',
    'A Comfortable sofa for 2',
    'items/sofa_pellow.png',
    20000,
  ),
  ItemModel(
    'Grey Sofa',
    'A perfect Sofa for your room',
    'items/sofa_grey.png',
    16000,
  ),
  ItemModel(
    'Chair Brown Y9',
    'A perfect Chair for your room',
    'items/chair1.png',
    6000,
  ),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(child: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('AR',style: TextStyle(fontSize: 48, color: Colors.white),),
              Text('Furniture',style: TextStyle(fontSize: 38, color: Colors.white,fontWeight: FontWeight.w200),),
              Text('APP',style: TextStyle(fontSize: 38, color: Colors.white,fontWeight: FontWeight.w200),),
            ],
          ),
          ),
          Expanded(child: Padding(
            padding: EdgeInsets.all(30),
            child: Container(
              padding: EdgeInsets.only(left: 20,right: 20,top: 6 ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
              ),
              child: ListView.separated(itemBuilder: (BuildContext context, int index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ArViewScreen(
                      itemImg: items[index].pic,
                    )),);
                  },
                  child: Row( children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.asset("${items[index].pic}", width: 60,),
                    ),
                    Expanded(child: Column(
                      children: [
                        Text(items[index].name, style: TextStyle(fontSize: 16,color:Colors.black),),
                        Text(items[index].detail, style: TextStyle(fontSize: 10,color:Colors.black87),),

                      ],
                    ),
                    ),
                    Container(
                     width: 60,
                     child: Text(items[index].price.toString(), style: TextStyle(fontSize: 14,color:Colors.red),),
                    ),
                  ],),
                );
              }, separatorBuilder: (BuildContext context, int index)=>Divider(), itemCount: items.length),
            ),
          ))
        ],
      )),
    );
  }
}
