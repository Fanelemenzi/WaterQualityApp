import 'package:flutter/material.dart';
import 'package:water_quality_app/Pages/info_page.dart';
import 'package:water_quality_app/water_info_pages/mjoli.dart';


class LubomboWaterSources extends StatelessWidget {
  LubomboWaterSources({Key? key}) : super(key: key);

final waterSource = [
 "Mjoli Dam"
];

final location = [
    "Along the Mbuluzi River",

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            title: const Text(
              "Lubombo Region Sources"
            ),
          ),
          body: ListView.separated(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index ){
              var currentItem = waterSource[index];
              return GestureDetector(
                child: Card(
                  child: ListTile(
                    tileColor: Colors.black,
                    //trailing: Icon(icons[index] as IconData?),
                    title: Text(waterSource[index], style: TextStyle(color: Colors.white),),
                    subtitle: Text(location[index], style: TextStyle(color: Colors.grey),),
                    onTap: () {
                        if (currentItem == "Mjoli Dam") {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MjoliDam() ));
                        }
                        
                    }
                        
              )
              )
              );
          },   
          separatorBuilder: (BuildContext context, int index)=>const Divider(height: 3, color: Colors.white,), 
          itemCount: waterSource.length, 
          ),
    );
  }
}

