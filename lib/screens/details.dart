import 'package:flutter/material.dart';
import 'package:flutter_sliding_up_panel/flutter_sliding_up_panel.dart';


class CentersPage extends StatelessWidget {
  CentersPage({super.key});
///The controller of sliding up panel
  final  SlidingUpPanelController panelController = SlidingUpPanelController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         Positioned.fill(
        child:Image.asset("images/kampalaimage.webp",fit: BoxFit.cover,),
              
      ),
      SlidingUpPanelWidget(
       // upperBound: 0.5,
       // minimumBound: 0.0,
        controlHeight:30, 
        panelController: panelController,
        onTap: (){
           if (SlidingUpPanelStatus.expanded == panelController.status) {
              panelController.collapse();
            } else {
              panelController.expand();
            }
        },
        enableOnTap: true,
        child: Container(
         
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)
              )
            )
          ),
          child: Column(
            children: [
              // 
              Container(
                  width: 100,
                  height: 5,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
             Container(
                color: Colors.white,
                child: ListView.builder(
                 // controller: scrollController,
                  physics:const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:const Color.fromARGB(255, 247, 248, 248),
                        ),
                        padding: const EdgeInsets.all(5 ),
                       
                        child: ListTile(
                        leading: Image.asset("images/kampalaimage.webp"),
                        title: Row(children: [Icon(Icons.local_hospital_sharp,color: const Color.fromARGB(255, 235, 114, 9),),Text("Selina Hospital",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold),)]),
                        subtitle: Row(children: [Icon(Icons.vaccines_outlined,color: const Color.fromARGB(255, 235, 114, 9)),Text("1.2m available",style: TextStyle(color:const Color.fromARGB(255, 116, 120, 120),))]),
                        
                        ),
                      ),
                    );
                  },
                  
                  shrinkWrap: true,
                  itemCount: 3,
                ),
              ),
            ],
          ),

        ),
        )
      ],
       
    );
  }
}