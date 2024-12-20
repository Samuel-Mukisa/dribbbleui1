import 'package:flutter/material.dart';
import 'package:vaccinationuiapp/screens/details.dart';

class VaccineWidget extends StatelessWidget {
  const VaccineWidget({
    super.key, required this.vaccineName, required this.centers,
  });

  final String vaccineName;
  final int centers;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Navigator.push(context,MaterialPageRoute(builder: (ctx) =>  CentersPage())),
      child: Container(
       // height:size.height*0.1 ,
       padding: const EdgeInsets.all(20),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(25.0),
         color:Colors.white
         ),
         child: Column(
           children: [
             Container(
               height:size.height*0.09,
               decoration: BoxDecoration(
                 color:const Color.fromARGB(255, 240, 237, 237),
                 borderRadius: BorderRadius.circular(15.0),
                 
               ),
                      child: Image.asset("images/clinicalbottle.webp"),
                            
             ),
             const SizedBox(height: 5),
             Expanded(child: Text(vaccineName,style: const TextStyle(color: Colors.black),overflow: TextOverflow.clip,textAlign: TextAlign.center)),
            Expanded(child: Text("$centers nearby centers",style: const TextStyle(color: Colors.grey),overflow: TextOverflow.visible, textAlign: TextAlign.center,))
           ],
         ),
      ),
    );
  }
}