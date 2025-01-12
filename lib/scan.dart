import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';

class ScanPage extends StatefulWidget {
  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  String qrCodeResult =
      "Not Yet Scanned. Please click on Open Scanner button to verify whether your vaccine is from authentic source.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Result",
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[200]),
              textAlign: TextAlign.center,
            ),
            Text(
              qrCodeResult,
              style: TextStyle(
                color: Colors.teal[200],
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            TextButton(
              // color: Colors.teal[200],
              // padding: EdgeInsets.all(15.0),
              onPressed: () async {
                String codeSanner =
                    await BarcodeScanner.scan().toString(); //barcode scnner
                setState(() {
                  qrCodeResult = codeSanner;
                });

                // try{
                //   BarcodeScanner.scan()    this method is used to scan the QR code
                // }catch (e){
                //   BarcodeScanner.CameraAccessDenied;   we can print that user has denied for the permisions
                //   BarcodeScanner.UserCanceled;   we can print on the page that user has cancelled
                // }
              },
              child: Text(
                "Open Scanner",
                style: TextStyle(
                    color: Colors.teal[200], fontWeight: FontWeight.bold),
              ),
              // shape: RoundedRectangleBorder(
                  // side: BorderSide(color: Colors.teal[200], width: 3.0),
                  // borderRadius: BorderRadius.circular(20.0)),
            )
          ],
        ),
      ),
    );
  }

  //its quite simple as that you can use try and catch staatements too for platform exception
}
