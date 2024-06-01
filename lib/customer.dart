import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class drop extends StatefulWidget {
  @override
  _dropState createState() => _dropState();
}

class _dropState extends State<drop> {
  String? selectedValue = 'Order'; // Default item

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            color: Colors.grey,
            width: 2
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: DropdownButton<String>(
          value: selectedValue,
          underline: Container(), // Hide the default underline
          onChanged: (String? value) {
            setState(() {
              selectedValue = value;
            });
          },
          items: <String>['Order', 'Pending', 'Received', 'Completed']
              .map((String value) {
            return DropdownMenuItem<String>(
                alignment: Alignment.center,
                value: value,
                child: Text(value,style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))));
          }).toList(),
        ),
      ),
    );
  }
}


class adminPanelPage extends StatefulWidget {
  const adminPanelPage({super.key});

  @override
  State<adminPanelPage> createState() => _adminPanelPageState();
}

class _adminPanelPageState extends State<adminPanelPage> {
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    List<String> a = [
      "https://digiprintshop.com/wp-content/uploads/2021/12/dps-20d000-t-royal-03.jpg",
      "https://images.pexels.com/photos/1311590/pexels-photo-1311590.jpeg?cs=srgb&dl=pexels-sebastiaan-stam-1311590.jpg&fm=jpg",
      "https://image.spreadshirtmedia.com/image-server/v1/products/T210A2PA4301PT17X16Y83D1036243098W29988H23203/views/1,width=550,height=550,appearanceId=2,backgroundColor=F2F2F2,modelId=6287,crop=list/i-just-dropped-a-load-mens-t-shirt.jpg",
      "https://m.media-amazon.com/images/I/B1VMTBKtipS._CLa%7C2140%2C2000%7C71kxXs%2Bl1oL.png%7C0%2C0%2C2140%2C2000%2B0.0%2C0.0%2C2140.0%2C2000.0_AC_SX569_.png",
      "https://m.media-amazon.com/images/I/A13usaonutL._CLa%7C2140%2C2000%7C51GNjacTH2L.png%7C0%2C0%2C2140%2C2000%2B0.0%2C0.0%2C2140.0%2C2000.0_AC_UY1000_.png",
      "https://m.media-amazon.com/images/I/B1rRKBtT74S._CLa%7C2140%2C2000%7C71riSkO5Y3L.png%7C0%2C0%2C2140%2C2000%2B0.0%2C0.0%2C2140.0%2C2000.0_AC_SL1500_.png",
      "https://m.media-amazon.com/images/I/B1UkG9ZkraL._CLa%7C2140%2C2000%7C71tor2SyFfL.png%7C0%2C0%2C2140%2C2000%2B0.0%2C0.0%2C2140.0%2C2000.0_AC_SL1500_.png",
      "https://m.media-amazon.com/images/I/B1Uem6hZZ7S._CLa%7C2140%2C2000%7C91vAJnmI%2BvL.png%7C0%2C0%2C2140%2C2000%2B0.0%2C0.0%2C2140.0%2C2000.0_AC_SX522_.png",
      "https://m.media-amazon.com/images/I/A1OZPgCsCHL._CLa%7C2140%2C2000%7C81-c8Ap51JL.png%7C0%2C0%2C2140%2C2000%2B0.0%2C0.0%2C2140.0%2C2000.0_AC_SL1500_.png",
      "https://m.media-amazon.com/images/I/B1DBWbloIpS._CLa%7C2140%2C2000%7C91V-mqpAACL.png%7C0%2C0%2C2140%2C2000%2B0.0%2C0.0%2C2140.0%2C2000.0_AC_SX679_.png",
      "https://cdn.cartpe.in/images/gallery_md/64ba7211553030.jpeg",
      "https://cdn.selloshop.io/images/gallery_md/6524fc44e1fee0.jpeg",
    ];
    List<String> b = [
      "Fabric",
      "Cotton",
      "Polyster",
      "Nylon",
      "Baninan",
      "Melan",
      "Lycra",
      "Baninan",
      "Fabric",
      "thread",
      "Fabric",
      "Cotton",
    ];
    List c = [
      "Sleeve",
      "Sleeve",
      "Sleeveless",
      "Sleeve",
      "Full sleeve",
      "Sleeve",
      "Sleeve",
      "Sleeve",
      "sleeveless",
      "Sleeve",
      "Sleeve",
      "Full sleeve",
    ];
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        toolbarHeight: 70,
        title: Center(child: Text("adminPanelPagetomer Details",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.blue)),)),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: height/1,
              width: width/1,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 12,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Container(
                          height: height/6,
                          child: Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: height/8,
                                    width: width/4,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(a[index]),fit: BoxFit.cover
                                        ),
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 26.0),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(b[index],style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.blue)),),
                                        Text(c[index],style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black)),),
                                      ],
                                    ),
                                  ),
                                  drop()

                                ],
                              )


                          ),
                        ),
                      ),
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
