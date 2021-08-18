import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    // double areasicura = size.height - statusBarHeight;

    // StatusBar height is 24 pixel.

    return Scaffold(
      body: Stack(
      children: [

        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.10),
          child: CustomScrollView(
            slivers: [

              SliverFillRemaining(
              child: Column(
                children: [
            
                SizedBox(height: statusBarHeight), // SafeArea statusbar
            
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: size.height * 0.04),
                    height: 20,
                    // color: Colors.orange,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
            
                      Icon(Icons.wb_sunny_sharp, size: 15, color: Color(0xff8276f4)),
            
                      SizedBox(width: 8), //  Horizontal Space from icon
                      
                      Text("MER 18 AGO", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color(0xff8276f4),
                      ),),
                      
                    ],)
                  ),
                ),
            
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  width: size.width * 0.80,
                  decoration: BoxDecoration(
                    // color: Color(0xffaf8eff),
                    borderRadius: BorderRadius.circular(29.5)
                    ),
                  child: Text("Ciao, Andrea", style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Color(0xff2e3760),
                  ),),
                  alignment: Alignment.centerLeft,
                  
            
            
                ),
            
              
              
                Container(
                  height: size.height * 0.30,
                  width: size.width * 0.80,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                  color: Color(0xffeceef2),
                  borderRadius: BorderRadius.circular(29.5)
                  ),
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      
            
                      Container(
                        width: size.width * 0.30,
                        // color: Colors.orange,
                        
                        child: Text('"Non è mai troppo tardi per diventare la persona che vuoi davvero essere"', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color(0xff515f86),
                        ),),
                      ),
            
                      Container(
                        width: size.width * 0.30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                          scale: 0.5,
                          image: AssetImage('assets/images/standing.png')
                          ),
                        borderRadius: BorderRadius.circular(29.5)
                        ),
                      ),
            
                      
            
                    ]
                    
                  ),
            
            
                ),
            
                SizedBox(height: 20),
            
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      child: Text("Cosa vuoi fare oggi?", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xff2e3760),
                      ),),
                    ),
                ),
            
                Expanded(
                  
                  
                  child: Container(
                    // color: Colors.orange,
                    margin: EdgeInsets.only(top: 20),
                    child: GridView.count(
                      padding: EdgeInsets.all(0),
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
            
                      CategoryCard(
                        title: "Profilo",
                        numeroicona: 60307,
                        numerocolore: 0xFF8c7ffd,
                      ),
                      CategoryCard(
                        title: "Università",
                        numeroicona: 58713,
                        numerocolore: 0xffb08dff,
                      ),
                      CategoryCard(
                        title: "Idee",
                        numeroicona: 58235,
                        numerocolore: 0xFF1a88ff,
                      ),
                      CategoryCard(
                        title: "Progetti",
                        numeroicona: 61080,
                        numerocolore: 0xFF4b5982,
                      ),
            
                      
            
                      ],
                      crossAxisCount: 2),
                  ),
                    
                ),
                  
                  
              ],),
            ),

            ] 
          ),
        ),


        
      
     
      ] 

    ));
  }
}

class CategoryCard extends StatelessWidget {
  final int numeroicona;
  final String title;
  final int numerocolore;
  const CategoryCard({
    Key? key, required this.numeroicona, required this.title, required this.numerocolore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(numerocolore),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Text(title,
            textAlign: TextAlign.center, style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              
            ),
          ),

          Icon(IconData(numeroicona, fontFamily: 'MaterialIcons'), 
          size: 65,
          color: Colors.white),

        ],
      ),
    );
  }
}