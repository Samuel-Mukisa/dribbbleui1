import 'package:flutter/material.dart';
import 'package:vaccinationuiapp/Widgets/vaccineItem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
   
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 237, 237),
      
      body: Padding(
        padding: EdgeInsets.only(top:50,left: 30,right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         // 
          children: <Widget>[
           const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Location",style: TextStyle(color: Color.fromARGB(255, 161, 159, 159)),),
                   Row(
                    children:[
                      Icon(Icons.location_on_outlined),
                      Text("Mirpur,Dhaka")
                  ]
                  ),
                  ]
                  ),
                Icon(Icons.notifications_sharp)
              ],
            ),
            SizedBox(height:size.height*0.01),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 3, 33, 55),
                borderRadius: BorderRadius.circular(8.0)
              ),
              padding: const EdgeInsets.all(10),
              
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Active Cases",style: TextStyle(color: Colors.white,fontSize: 15),textAlign: TextAlign.left,),
                    Text("25,080,398",style: TextStyle(color:Color.fromARGB(255, 221, 50, 38),fontSize: 20),textAlign: TextAlign.left,)
                    ]
                    ),
                   Icon(Icons.trending_up,size: 50,color: Colors.white,weight: 10,)
                ],
              ),
            ),
            SizedBox(
              height: size.height*0.05,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0)
              ),
              
              child: const Row(
                children: [
                  Icon(Icons.search,color: Colors.grey),
                 Text("Search nearby",style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
              SizedBox(
              height: size.height*0.03,
            ),
           const Text("Popular Vaccines",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
          // const SizedBox(height: 5),
           Expanded(
             child: GridView(
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.9,crossAxisSpacing: 5,mainAxisSpacing: 5),
             children:const[
              VaccineWidget(vaccineName: 'Sinovac', centers: 8,),
              VaccineWidget(vaccineName: 'Pfizer', centers: 6,),
              VaccineWidget(vaccineName: 'Conab', centers: 10,),
              VaccineWidget(vaccineName: 'Vinax', centers: 12,)
             ] ),
           )
           
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child:const Center(child:Icon(Icons.add,color:Colors.white)),
      shape: const CircleBorder(), backgroundColor: const Color.fromARGB(255, 255, 106, 0),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            bottomNavigationBar:BottomNavigationBar(
             showSelectedLabels: false,
             showUnselectedLabels: false,
             type:BottomNavigationBarType.shifting ,
              items:[
               BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.grey,),label:""),
               BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined,color: Colors.grey,),label:""),
               BottomNavigationBarItem(icon: Icon(Icons.send,color: Colors.grey,),label:""),
               BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.grey,),label:"")
              ] ,
              backgroundColor: Colors.white,
              ),
    );
  }
}


