import 'package:flutter/material.dart';
import 'package:hostelmanagement/room0001.dart';
import 'package:hostelmanagement/room0002.dart';
import 'package:hostelmanagement/room0003.dart';
import 'package:hostelmanagement/room0004.dart';
import 'package:hostelmanagement/room0005.dart';

class HOMEPAGE extends StatefulWidget {
  const HOMEPAGE({super.key});

  @override
  State<HOMEPAGE> createState() => _HOMEPAGEState();
}

class _HOMEPAGEState extends State<HOMEPAGE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Colors.blue,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: SizedBox(
          width: 230,
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.black,
                ),
              ),
              hintText: "  Search hostel rooms",
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Column(
                children: [
                  Stack(
                    children: [
                    Container(
                      width: 340,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Column(
                        children: [
                          Text(
                            "Room - 0001",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Hostel name: ",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 55, left: 130),
                      child: Text(
                        "ST.MARY'S COLLEGE HOSTEL",
                        style: TextStyle(color: Colors.green[500]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Room0001()),
                          );
                        },
                        child: Container(
                          width: 340,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Row(
                            children: [
                              Text(
                                "      Available Beds : ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
                  
                  SizedBox(height: 20,),
                  Stack(
                    children: [
                    Container(
                      width: 340,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Column(
                        children: [
                          Text(
                            "Room - 0002",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Hostel name: ",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 55, left: 130),
                      child: Text(
                        "PAYYANUR COLLEGE HOSTEL",
                        style: TextStyle(color: Colors.green[500]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ROOM0002()),
                          );
                        },
                        child: Container(
                          width: 340,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Row(
                            children: [
                              Text(
                                "      Available Beds : ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),

                  SizedBox(height: 20,),
                  Stack(
                    children: [
                    Container(
                      width: 340,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Column(
                        children: [
                          Text(
                            "Room - 0003",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Hostel name: ",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 55, left: 130),
                      child: Text(
                        "DEVASWOM BOARD COLLAGE",
                        style: TextStyle(color: Colors.green[500]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ROOM0003()),
                          );
                        },
                        child: Container(
                          width: 340,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Row(
                            children: [
                              Text(
                                "      Available Beds : ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),

                  SizedBox(height: 20,),
                  Stack(
                    children: [
                    Container(
                      width: 340,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Column(
                        children: [
                          Text(
                            "Room - 0004",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Hostel name: ",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 55, left: 130),
                      child: Text(
                        "MAHARAJAS COOLEGEHOSTEL",
                        style: TextStyle(color: Colors.green[500]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ROOM0004()),
                          );
                        },
                        child: Container(
                          width: 340,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Row(
                            children: [
                              Text(
                                "      Available Beds : ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),

                  SizedBox(height: 20,),
                  Stack(
                    children: [
                    Container(
                      width: 340,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Column(
                        children: [
                          Text(
                            "Room - 0005",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Hostel name: ",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 55, left: 130),
                      child: Text(
                        "BRENNEN COLLEGE HOSTEL",
                        style: TextStyle(color: Colors.green[500]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ROOM0005()),
                          );
                        },
                        child: Container(
                          width: 340,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Row(
                            children: [
                              Text(
                                "      Available Beds : ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
