import 'package:fitness/common/colo_extension.dart';
import 'package:fitness/common_widget/on_boarding_page.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  _OnBoardingViewState createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
 int selectPage = 0;
 PageController controller = PageController();

 @override 
 void initState(){

  super.initState();

  controller.addListener(() {
    selectPage = controller.page?.round() ?? 0;

    setState(() {
      
    });
  });
 }

 List pageArr = [
  {
    "title":"Track Your Goals",
    "subtitle":"Don't worry if you havr trouble determiining your goals, We can help you determiine your goals and track you goals",
    "image":"assets/img/one.png"
  },
  {"title":"Get Burn" ,"subtitle":"Let's keep burning, to acheave your goals, it hurts only temporarily, if you give up now you will be in pain forever","image":"assets/img/on_2.png" },
  {"title":"Eat Well" ,"subtitle":"Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun","image":"assets/img/on_3.png" },
  {"title":"Improve Sleep\nQuality" ,"subtitle":"Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning ","image":"assets/img/on_4.png" },
 ];
 
  @override
  Widget build(BuildContext context) {
     var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Tcolor.white,
    body:Stack(
      alignment: Alignment.bottomRight,
      children: [
       PageView.builder(
        controller: controller,
        itemCount: pageArr.length,
        itemBuilder: (context, index) {
         var pObj = pageArr[index] as Map? ?? {};
        return OnBoardingPage(pObj: pObj);
        
       }),

       


       SizedBox(
        width: 120,
        height: 120,
         child: Stack(
          alignment: Alignment.center,
           children: [

             SizedBox(
              width: 70,
              height: 70,
               child: CircularProgressIndicator(
                color: Tcolor.primaryColor1,
                value: (selectPage + 1) / 4,
                strokeWidth: 2,
               ),
             ),

             Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              width: 60,
              height: 60,
              decoration: BoxDecoration(color: Tcolor.primaryColor1, borderRadius: BorderRadius.circular(35)),
              child: IconButton(icon: Icon(Icons.navigate_next, color: Tcolor.white, ),color: Tcolor.primaryColor1 ,onPressed: (){
                 
                 if(selectPage < 3) {
                
       
                   selectPage = selectPage + 1;

                   
                    controller.jumpToPage(selectPage);

                    setState(() {
                      
                    });
                    
       
                 }else{
                     // open welcome screen
                     print("open welcome screen");
                    
                 }
                  
              } ,),
             ),

            
           ],
         ),
       )
      ],
    ) ,
    );
    
  }
}