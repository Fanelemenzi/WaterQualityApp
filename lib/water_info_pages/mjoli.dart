import 'package:flutter/material.dart';


class MjoliDam extends StatelessWidget {
  const MjoliDam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Mjoli Dam"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children:  [
                Expanded(
                  child: Card(
                    borderOnForeground: true,
                    elevation:3.4,
                    shadowColor: Colors.red,
                    child: Image.asset("assets/ph.png")
                    
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
          ),
          SizedBox(height:0.1,),
          Expanded(
            child: Row(
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
          )
        ],
      ),
    );
  }
}