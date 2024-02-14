import 'package:flutter/material.dart';
import 'package:hostelmanagement/home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   bool passwordVisible=false; 
      
   @override 
    void initState(){ 
      super.initState(); 
      passwordVisible=true; 
    }    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80,left: 10),
              child: Image.asset("images/hostellogo1.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 240),
              child: Container(
                width: 360,
                height: 20,
                color: Colors.blue[100],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250, left: 85),
              child: Text(
                "Sign in to your account",
                style: TextStyle(
                    color: Color.fromARGB(255, 34, 41, 109),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 320, left: 35),
              child: Column(
                children: [
                  SizedBox(
                    width: 290,
                    height: 55,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 0, color: Colors.black,),
                          ),
                          hintText: "  Enter username",
                          ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  SizedBox(
                    width: 290,
                      height: 55,
                    child: TextField(
                      obscureText: passwordVisible,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(width: 0, color: Colors.black,),
                              ),
                              hintText: "  Password",
                              
                      helperStyle:TextStyle(color:Colors.green), 
                      suffixIcon: IconButton( 
                        icon: Icon(passwordVisible 
                            ? Icons.visibility 
                            : Icons.visibility_off), 
                        onPressed: () { 
                          setState( 
                            () { 
                              passwordVisible = !passwordVisible; 
                            }, 
                          ); 
                        }, 
                      ),
                              ),
                        ),
                  ),
                  SizedBox(height: 80,),
                  SizedBox(width: 250,height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 34, 41, 109)),
                      onPressed: (){
                        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HOMEPAGE()),
          );
                      },
                     child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 650,left: 35),
              child: SizedBox(
                width: 280,
                child: Divider(color: Color.fromARGB(255, 34, 41, 109),)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 710,left: 135),
              child: SizedBox(height: 40,
                child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.white70),
                        onPressed: (){
                          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HOMEPAGE()),
          );
                        },
                       child: Text("Skip",style: TextStyle(color: Color.fromARGB(255, 34, 41, 109),fontSize: 20),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
