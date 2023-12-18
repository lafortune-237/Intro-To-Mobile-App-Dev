import 'package:fitness/common/colo_extension.dart';
import 'package:flutter/material.dart';

class StartedView extends StatefulWidget {
  const StartedView({Key? key}) : super(key: key);

  @override
  _StartedViewState createState() => _StartedViewState();
}

class _StartedViewState extends State<StartedView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Tcolor.white,
      body: Container(
        width: media.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: Tcolor.primaryG,
            begin: Alignment.topLeft, 
            end: Alignment.bottomRight ),
            ),
         child: Stack(
          alignment: Alignment.center,
          children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            const Spacer(),
            Text("Fitness", 
            style: TextStyle(
            color: Tcolor.black,
            fontSize: 36, 
            fontWeight: FontWeight.w700 ), ),

             Text("Everybody Can Train", 
            style: TextStyle(
            color: Tcolor.gray,
            fontSize: 18, 
             ), ),
             const Spacer(),


             MaterialButton(onPressed: (){},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              textColor: Tcolor.primaryColor1,
              minWidth: double.maxFinite,
              color: Tcolor.white,
              child: Text("Get Started", 
              style: TextStyle(
                color: Tcolor.gray,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ) ),)
          ],)

          ],
         ),   
      ),
    );
  }
}
