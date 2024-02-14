import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hostelmanagement/home.dart';

class PAYMENT extends StatefulWidget {
  const PAYMENT({super.key});

  @override
  State<PAYMENT> createState() => _PAYMENTState();
}

class _PAYMENTState extends State<PAYMENT> {
  bool passwordVisible=false; 
      
   @override 
    void initState(){ 
      super.initState(); 
      passwordVisible=true; 
    } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        title: Text("Payment",style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 25),
              child: Text("Pay The bill",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80,left: 25),
              child: Text("card informations",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120,left: 25),
              child: Column(
                children: [
                  SizedBox(
                    width: 300,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(15),
                        
                      ],
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(width: 0, color: Colors.black,),
                              ),
                        hintText: "Card number"
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(width: 0, color: Colors.black,),
                            ),
                            hintText: "Full name",
                            prefixIcon: Icon(Icons.person_2_outlined)
                            ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        maxLength: 6,
                        keyboardType: TextInputType.number,
                        obscureText: passwordVisible,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(width: 0, color: Colors.black,),
                                ),
                                hintText: "  Pin number",
                                
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
        
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 420,left: 20),
              child: Row(
                children: [
                  SizedBox(
                    child: SizedBox(
                      width: 150,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(4)
                        ],
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(width: 0, color: Colors.black,),
                              ),
                          hintText: "CVV",
                          prefixIcon: Icon(Icons.calendar_view_month_sharp)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  SizedBox(
                    child: SizedBox(
                      width: 150,
                      child: TextField(
                        
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(width: 0, color: Colors.black,),
                              ),
                          hintText: "MM/YY",
                          prefixIcon: Icon(Icons.calendar_view_month_sharp)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 520,left: 30),
              child: SizedBox(
                width: 300,
                child: OutlinedButton.icon(onPressed: () {},
                 icon: Icon(Icons.qr_code_scanner_rounded),
                  label: Text("Scan")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 600,left: 30),
              child: SizedBox(
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900]
                  ),
                  onPressed: () {
                     Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HOMEPAGE()),
          );
                  },
                 child: Text("Pay",style: TextStyle(color: Colors.white),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
