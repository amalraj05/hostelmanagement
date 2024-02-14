import 'package:flutter/material.dart';
import 'package:hostelmanagement/home.dart';
import 'package:hostelmanagement/payment.dart';

class ROOM0002 extends StatefulWidget {
  const ROOM0002({super.key});

  @override
  State<ROOM0002> createState() => _ROOM0002State();
}

class _ROOM0002State extends State<ROOM0002> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Stack(
        children: [
          Container(
            width: 360,height: 400,
            color: Colors.pink,
            child: Image.asset("images/hostel1.jpg",fit: BoxFit.cover,),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 370),
            child: Container(
              width: 360,height: 450,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.only(topRight: Radius.circular(50))
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 430,left: 20),
            child: Text("PAYYANUR COLLEGE HOSTEL",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500,left: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Location             : ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    Text("   Kannur",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),)
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("PH number        : ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    Text("   0482  5655248",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),)
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("Available room : ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    Text("   1 Rooms  ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.green),)
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("Price                  : ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    Text("   ₹ 5,000  ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.red),)
                  ],
                ),
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(top: 730,left: 20),
            child: Row(
              children: [
                SizedBox(
                  width: 140,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red
                    ),
                    onPressed: () {
                  
                  },
                   child: InkWell(
                    onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HOMEPAGE()),
                          );
                        },
                    child: Text("Cancel",style: TextStyle(color: Colors.white),))),
                ),

                SizedBox(width: 30,),
            
                 SizedBox(
                  width: 140,
                   child: InkWell(
                    
                     child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[900]
                      ),
                      onPressed: () {
                                     
                                     },
                     child: InkWell(
                      onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PAYMENT()),
                          );
                        },
                      child: Text("book now",style: TextStyle(color: Colors.white),))),
                   ),
                 ),
              ],
            ),
          )
          
        ],
      ),
    );
  }
}