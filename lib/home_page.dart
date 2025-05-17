
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homepage extends StatelessWidget {

  const Homepage({super.key});

  final List<Map<String,dynamic>>countryList=const[

    {"name": "argentina",
      "title" : "Land of Tango and the Andes",
      "image" : "assets/images/argentine.jpg"

    },

    {
      "name" : "japan",
      "title" : "Land of the Rising Sun",
       "image" : "assets/images/japan.jpg"


    },

    {
      "name" : "Bangladesh",
      "title" : "The Land of Rivers and Green Fields",
       "image" : "assets/images/bd.jpg"
    },
    {
      "name" : "china",
      "title" : "The Ancient Dragon of the East",
      "image" : "assets/images/chin.jpg"

    },

    {
      "name" : "Portugal",
      "title" : "Seafarers of the Atlantic",
      "image" : "assets/images/portugal.jpg"

    },
    {
      "name" : "Russia",
      "title" : "he Vast Land of Snow and History",
      "image" : "assets/images/russia-flag.jpg"

    },
    {
      "name" : "Spain",
      "title" : "Flamenco, Sun, and Historic Majesty",
      "image" : "assets/images/spain.jpg"

    },



  ];






  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;




    getCount(){
      if(size.width <768){
        return 2;
      }else if(size.width > 768 && size.width <= 1024){
        return 3;
      }else{
        return 4;
      }
    }

    return Scaffold(

      body:GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: getCount()
          ),
          itemBuilder: (context,index){
            Map<String,dynamic>countryInfo=countryList[index];
            String name=countryInfo["name"];
            String title=countryInfo["title"];
            String  imagePath=countryInfo["image"];

            return LayoutBuilder(
                builder: (context,constraint){
                  return Card(

                    child: Column(

                      children: [

                        Expanded(
                          flex: 2,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(

                                image: DecorationImage(
                                    image: AssetImage(imagePath),
                                  fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12.r),
                                  topRight: Radius.circular(12.r)
                                )
                              ),

                            )
                        ),
                        Expanded(
                          flex: 2,
                            child: Column(


                              children: [

                                Container(
                                  width: double.infinity,
                                  color: Colors.grey,
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Row(

                                    children: [

                                      SizedBox(width: 2.w),
                                      Icon(Icons.group, size: constraint.maxWidth * 0.04),
                                      SizedBox(width: 2.w),
                                      Text("৩টি সিট বাকি", style: TextStyle(fontSize: constraint.maxWidth *  0.04)),
                                      SizedBox(width: 4.w),
                                      Icon(Icons.watch, size: 15.r),
                                      SizedBox(width: 2),
                                      Expanded(
                                        child: Text(
                                          "১১ দিন বাকি",
                                          style: TextStyle(fontSize: constraint.maxWidth * 0.04),
                                        ),
                                      ),


                                    ],


                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 7,
                                    vertical: 5,
                                  ),
                                  child: Text(
                                   title,
                                    style: TextStyle(
                                      fontSize: constraint.maxWidth * 0.05,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                
                                
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: constraint.maxHeight * 0.12,

                                    child: ElevatedButton(onPressed: (){},
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,

                                          children: [

                                            Text("Get you Visa",style: TextStyle(fontSize: constraint.maxWidth * 0.04),),
                                            SizedBox(width: 10.w,),
                                            Icon(Icons.arrow_forward,size: constraint.maxWidth * 0.07,)

                                          ],
                                        ),
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(4),

                                        ),
                                        backgroundColor: Colors.grey[400],

                                        
                                      ),

                                    ),
                                  ),
                                )



                              ],


                            )
                        )




                      ],


                    ),





                  );
                }



            );



          },

        itemCount: countryList.length,

      )

    );




  }
}


