import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../resources/app_assets.dart';
import '../resources/strings.dart';
import 'package:country_calling_code_picker/picker.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  Country? _selectedCountry;
  final style = TextStyle(fontSize: 15, fontWeight: FontWeight.w400);

  @override
  void initState() {
    initCountry();
    super.initState();
  }

  void initCountry() async {
    final country = await getDefaultCountry(context);
    setState(() {
      _selectedCountry = country as Country?;
    });
  }

  @override
  Widget build(BuildContext context) {

    final country = _selectedCountry;
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(child: Text("Verification code",
          textAlign: TextAlign.center,
            style: GoogleFonts.josefinSans(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize:23,
                color: Colors.black,
              ),
            )
            )),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {

          },
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 0.1,top: 100,right: 0.1),
              height: deviceHeight,
              width: deviceWidth,
              child: Container(

                  child: Image.asset(

                    AppAssets.verification,
                    height: deviceHeight,
                    fit: BoxFit.fill,
                    width: deviceWidth,
                  ))
            ),

          ],
        ),
      ),
    );
  }
}


