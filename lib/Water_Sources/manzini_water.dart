import 'package:flutter/material.dart';
import 'package:water_quality_app/Pages/info_page.dart';
import 'package:water_quality_app/water_info_pages/Mankayane_water_scheme.dart';
import 'package:water_quality_app/water_info_pages/Moneni_water_scheme.dart';


class ManziniWaterSources extends StatelessWidget {
  ManziniWaterSources({Key? key}) : super(key: key);

final waterSource = [
  "Moneni Water Scheme",
  "Mankayane Water Scheme",
];

final location = [
    "Moneni Outside Manzini Township",
    "Mankayane Township",
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            title: const Text(
              "Manzini Water Sources"
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
                        if (currentItem == "Moneni Water Scheme") {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MoneniScheme() ));
                        }else if (currentItem == "Mankayane Water Scheme") {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MankayaneScheme() ));
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

