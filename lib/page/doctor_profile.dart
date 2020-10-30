import 'package:profile_ui/model/profile_model.dart';
import 'package:profile_ui/styles/textStyle.dart';
import 'package:profile_ui/widegt/imageRond.dart';
import 'package:flutter/material.dart';
import 'package:profile_ui/styles/colours.dart';

class DoctorProfile extends StatefulWidget {
  @override
  _DoctorProfileState createState() => _DoctorProfileState();
}

var wScreen, hScreen;

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    wScreen = MediaQuery.of(context).size.width;
    hScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColours.kC_DarkGery,
      body: Stack(
        children: [
          Container(
            height: hScreen * .40,
            width: wScreen,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage(imgBg), fit: BoxFit.fitHeight),
            ),
            child: Stack(
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: wScreen,
                    height: hScreen * .40,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: TxtApp(
                txt: "My Profile",
                colour: AppColours.kC_Gery,
                size: 23,
                bold: true,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              ImgRounded(imgPath: imgPg, isOnLine: true),
              SizedBox(
                height: 10,
              ),
              TxtApp(
                  txt: "Qusai Alsimat ",
                  colour: AppColours.kC_Gery,
                  size: 20,
                  bold: true),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TxtApp(
                    txt: "Kh Sudain ,25",
                    colour: AppColours.kC_Gery,
                    size: 16,
                  ),
                  Icon(
                    Icons.location_on,
                    color: AppColours.kC_Gery,
                  ),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  buildCard("Level", "152", false),
                  buildCard("152", "152", true),
                  buildCard("Progress", "152%", false),
                ],
              ),
              Flexible(
                child: Container(
                  // height: 60,
                  margin: EdgeInsets.only(top: 14),
                  child: GridView.builder(
                      itemCount: profiles.length, // widget.profile.length,

                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2,
                          crossAxisCount: 2,
                          crossAxisSpacing: 1.0,
                          mainAxisSpacing: 8.0),
                      itemBuilder: (BuildContext context, int i) {
                        return Card(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            elevation: 9,
                            color: AppColours.kC_DarkGery,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0)),
                            child: Container(
                              height: 60,
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Icon(
                                          profiles[i].icon,
                                          color: AppColours.kC_Pink,
                                        ),
                                      ),
                                      TxtApp(
                                          txt: profiles[i].number.toString(),
                                          colour: AppColours.kC_Raisin,
                                          size: 16,
                                          bold: true),
                                    ],
                                  ),
                                  TxtApp(
                                      txt: profiles[i].name,
                                      colour: AppColours.kC_Raisin,
                                      size: 14),
                                ],
                              ),
                            ));
                      }),
                ),
              ),

              
            ],
          ),
        ],
      ),
    );
  }

  Widget buildRow(
    IconData icon,
    String nm,
    String txt,
    //  IconData icon2,String nm2, String txt2
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          buildExpanded(icon, nm, txt),
          // buildExpanded(icon2, nm2, txt2),
        ],
      ),
    );
  }

  Expanded buildExpanded(IconData icon, String nm, String txt) {
    return Expanded(
      child: Card(
        margin: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        elevation: 9,
        color: AppColours.kC_DarkGery,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          // height: 70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Icon(
                  icon,
                  color: AppColours.kC_Pink,
                ),
              ),
              TxtApp(
                  txt: nm, colour: AppColours.kC_Raisin, size: 16, bold: true),
              TxtApp(txt: txt, colour: AppColours.kC_Raisin, size: 14),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(String txt, String nm, bool show) {
    return Expanded(
      child: Card(
        margin: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        elevation: 9,
        color: AppColours.kC_DarkGery,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
        child: Container(
          height: 70,
          child: show == false
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TxtApp(
                        txt: nm,
                        colour: AppColours.kC_Gery,
                        size: 16,
                        bold: true),
                    TxtApp(txt: txt, colour: AppColours.kC_Gery, size: 14)
                  ],
                )
              : Icon(
                  Icons.lock_outline,
                  color: AppColours.kC_Pink,
                ),
        ),
      ),
    );
  }
}
