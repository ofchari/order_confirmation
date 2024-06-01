import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Hom extends StatefulWidget {
  const Hom({Key? key});

  @override
  State<Hom> createState() => _HomState();
}

class _HomState extends State<Hom> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  var size, height, width;
  String _copy = "Copyme";
  TextEditingController _textController = TextEditingController();

  void _copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Copied to Clipboard")),
    );
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Center(
          child: Text(
            "Order Confirmation",
            style: GoogleFonts.poppins(textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),),
          ),
        ),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Container(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: height / 4,
                    width: width / 1.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/736x/9c/d2/81/9cd281cbde0afdfce4ad9e4a1d568690.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Card(
                    child: Container(
                      height: height / 4.1,
                      width: width / 1.2,
                      child: Column(
                        children: [
                          Text(
                            "Order Details",
                            style: GoogleFonts.poppins(textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.pink,
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Fabric :",
                                  style: GoogleFonts.poppins(textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue,
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Cart",
                                    style: GoogleFonts.poppins(textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Type :",
                                  style: GoogleFonts.poppins(textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue,
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Cotton",
                                    style: GoogleFonts.poppins(textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Order :",
                                  style: GoogleFonts.poppins(textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue,
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Cart",
                                    style: GoogleFonts.poppins(textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Price ₹999.00",
                    style: GoogleFonts.poppins(textStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),),
                  ),
                  SizedBox(
                    height: 140,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            child: Container(
                              height: 650,
                              width: 420,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Container(
                                      height: height / 6.5,
                                      width: width / 2.5,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://www.shiftingwale.com/resources/images/blog/92121_Bar_Code.jpeg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  GestureDetector(
                                      onTap: ()async{
                                        await Clipboard.setData(ClipboardData(text: "UPI9025011@gmail.com"));
                                      },
                                      child: Card(
                                        child: Container(
                                            height: height/20,
                                            width: width/2,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(30)
                                            ),
                                            child: Center(child: Text("Copy Transaction ID",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)),))),
                                      )),
                                  Form(
                                    key: _key,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                          width: 150,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                            controller: _textController,
                                            style: TextStyle(color: Colors.black),
                                            decoration: InputDecoration(
                                                hintText: "Transaction Id",
                                                hintStyle: GoogleFonts.poppins(textStyle: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.blue),),
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.red, width: 2),
                                                    borderRadius:
                                                    BorderRadius.circular(15))),
                                            validator: (transaction) {
                                              if (transaction == null ||
                                                  transaction.isEmpty || transaction.length>10) {
                                                return "Please enter valid Id";
                                              }
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                            style: TextStyle(color: Colors.black),
                                            decoration: InputDecoration(
                                                hintText: "Mobile Number",
                                                hintStyle: GoogleFonts.poppins(textStyle: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.blue),),
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.red, width: 2),
                                                    borderRadius:
                                                    BorderRadius.circular(15))),
                                            validator: (phone) {
                                              if (phone == null ||
                                                  phone.isEmpty ||
                                                  !RegExp(
                                                      r'(^(?:[+0]9)?[0-9]{10,12}$)')
                                                      .hasMatch(phone)) {
                                                return "Please enter valid Mobile number";
                                              }
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),onPressed: () {
                                              if (_key.currentState!.validate()) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(SnackBar(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(15),
                                                      topRight: Radius.circular(15),
                                                    ),
                                                  ),
                                                  backgroundColor: Colors.blue,
                                                  content: Center(child: Text('Completed',style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white)),)),
                                                ));
                                              }
                                            },
                                            child: Text(
                                              "Submit",
                                              style: GoogleFonts.poppins(textStyle: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300,color: Colors.white),),
                                            ))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Close",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.brown)),),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Text("Checkout",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.deepPurple)),),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
