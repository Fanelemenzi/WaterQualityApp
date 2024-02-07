import 'package:flutter/material.dart';


class MoneniScheme extends StatelessWidget {
  const MoneniScheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black12,
        title: Text("Moneni Water Scheme"),
      ),
      body: Column(
        children: [
          SizedBox(height: 5,),
          Row(
            children:  [
              Expanded(
                child: Card(
                  borderOnForeground: true,
                  elevation:3.4,
                  shadowColor: Colors.red,
                  child: ClipRRect(
                    child: Image.asset("assets/ph.png",
                    fit: BoxFit.cover,
                    ),
                  ) 
                  
                  
                ),
              ),
             const SizedBox(height: 15,),
              Expanded(
                child: Card(
                  elevation:3.4,
                  shadowColor: Colors.green,
                  child:
                    Image.asset("assets/turb.png"),
                ),
              )
            ],
          ),
          SizedBox(height:5,),
          Row(
            children: [
               Expanded(
                child: Card(
                  elevation:3.4,
                   shadowColor: Colors.green,
                  child:  Image.asset("assets/hard.png"),
                ),
              ),
             const SizedBox(height: 15,),
              Expanded(
                child: Card(
                  elevation:3.4,
                   shadowColor: Colors.green,
                  child:  Image.asset("assets/do.png"),
                ),
              )
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: const [
              Expanded(
                child: SizedBox(
                  height: 160,
                  child: Card(
                    borderOnForeground: true,
                    color: Colors.grey,
                    elevation: 6.0,
                    shadowColor: Colors.black,
                    
                      child: Text("Long card"),
                  ),
                )
              ,)
            ],
          )
        ],
      ),
    );
  }
}