import 'package:flutter/material.dart';
import 'package:water_quality_app/Water_Sources/shiselweni_water.dart';
import 'package:water_quality_app/Water_Sources/hhohho_water.dart';
import 'package:water_quality_app/Water_Sources/lubombo_water.dart';
import 'package:water_quality_app/Water_Sources/manzini_water.dart';


class RegionPage extends StatelessWidget {
  RegionPage({Key? key}) : super(key: key);

final regions = [
  "Hhohho",
  "Manzini",
  "Shiselweni",
  "Lubombo"
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            title: const Text(
              "Choose Your Region"
            ),
          ),
          body: ListView.separated(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index ){
              var currentItem = regions[index];
              return GestureDetector(
                child: Card(
                  child: ListTile(
                    tileColor: Colors.black,
                    //trailing: Icon(icons[index] as IconData?),
                    title: Text(regions[index], style: TextStyle(color: Colors.white),),
                    onTap: () {
                        if (currentItem == "Hhohho") {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HhohhoWaterSources() ));
                        }else if (currentItem == "Manzini") {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ManziniWaterSources() ));
                        }else if (currentItem == "Shiselweni") {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ShiselweniWaterSources() ));
                        }else if (currentItem == "Lubombo") {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LubomboWaterSources()));
                        }
                        
                    }
                        
              )
              )
              );
          },   
          separatorBuilder: (BuildContext context, int index)=>const Divider(height: 3, color: Colors.white,), 
          itemCount: regions.length, 
          ),
    );
  }
}

