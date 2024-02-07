import 'package:flutter/material.dart';
import 'package:water_quality_app/Pages/info_page.dart';
import 'package:water_quality_app/water_info_pages/Luvandzi_dam.dart';
import 'package:water_quality_app/water_info_pages/singizini.dart';


class ShiselweniWaterSources extends StatelessWidget {
  ShiselweniWaterSources({Key? key}) : super(key: key);

final waterSource = [
  "Singizi Water Scheme",
  "Luvandzi Dam"
];

final location = [
    "Singizi Community, next to school, Singizini",
    "Luvandzi Dam, along MR20 road"
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            title: const Text(
              "Shiselweni Water Sources"
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
                        if (currentItem == "Singizini Water Scheme") {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SingiziniScheme() ));
                        }else if (currentItem == "Luvandzi Dam") {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LuvandziDam() ));
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

