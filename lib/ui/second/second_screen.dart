import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isfandiyor_azimov/ui/second/widgets/menu_widget.dart';
import 'package:isfandiyor_azimov/utills/icons.dart';

import '../../utills/color.dart';
class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:SystemUiOverlayStyle(
            statusBarColor: AppColors.C_674D3F
        ),
        toolbarHeight: 0,
        elevation: 0,
      ),
      backgroundColor: AppColors.main_color,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                      width:  double.infinity,
                      child: Image.asset(AppIcons.appBarProf)),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(AppIcons.drowerIcon,height: 31.h,width: 31.w,),
                        Image.asset(AppIcons.profile,height:44.h,width: 44.w,)


                      ],
                    ),
                  )
                ],
              ),

              Container(
                padding: EdgeInsets.only(left:29.w ),
                child: Text(
                  "Hot Coffee",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20.sp,fontWeight: FontWeight.w700,color: AppColors.C_674D3F)

                ),
              ),
              SizedBox(height: 15.h,),
              SizedBox(
                height: 250.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 20.w,),
                      MenuWidget(images: AppIcons.latte, title: "Latte", texts: "esperesso\nsteamed milk"),
                      SizedBox(width: 18.w,),
                      MenuWidget(images: AppIcons.mocha, title: "Moccha", texts: "esperesso\nsteamed milk\nchocolate"),
                      SizedBox(width: 18.w,),
                      MenuWidget(images: AppIcons.latte, title: "Latte", texts: "esperesso\nsteamed milk"),
                      SizedBox(width: 18.w,),
                      MenuWidget(images: AppIcons.mocha, title: "Moccha", texts: "esperesso\nsteamed milk\nchocolate"),
                      SizedBox(width: 18.w,),
                      MenuWidget(images: AppIcons.latte, title: "Latte", texts: "esperesso\nsteamed milk"),
                      SizedBox(width: 18.w,),
                      MenuWidget(images: AppIcons.mocha, title: "Moccha", texts: "esperesso\nsteamed milk\nchocolate")

                    ],
                  ),
              ),
              SizedBox(height: 3.h,),
              Container(
                padding: EdgeInsets.only(left:29.w ),
                child: Text(
                    "Cold Coffe",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20,fontWeight: FontWeight.w700,color: AppColors.C_674D3F)

                ),
              ),
              SizedBox(height: 15.h,),
              SizedBox(
                height: 250.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 20.w,),
                    MenuWidget(images: AppIcons.latteSecond, title: "Latte", texts: "esperesso\nsteamed milk"),
                    SizedBox(width: 18.w,),
                    MenuWidget(images: AppIcons.mochaScond, title: "Moccha", texts: "esperesso\nsteamed milk\nchocolate"),
                    SizedBox(width: 18.w,),
                    MenuWidget(images: AppIcons.latteSecond, title: "Latte", texts: "esperesso\nsteamed milk"),
                    SizedBox(width: 18.w,),
                    MenuWidget(images: AppIcons.mochaScond, title: "Moccha", texts: "esperesso\nsteamed milk\nchocolate"),
                    SizedBox(width: 18.w,),
                    MenuWidget(images: AppIcons.latteSecond, title: "Latte", texts: "esperesso\nsteamed milk"),
                    SizedBox(width: 18.w,),
                    MenuWidget(images: AppIcons.mochaScond, title: "Moccha", texts: "esperesso\nsteamed milk\nchocolate")


                  ],

                ),
              ),

              SizedBox(height: 47.h,),


            ],

          ),
        ),
      ) ,
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.symmetric(vertical: 42.w,horizontal: 42.h),
        child: Container(
          height: 69.h,
          width: 292.w ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45),
            color: AppColors.C_FFF9F2,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(AppIcons.homeIcon,width:31.w ,height: 31.h,),
              Image.asset(AppIcons.coffeeBeansIcon,width:31.w ,height: 31.h,),
              Image.asset(AppIcons.profileIcon,width:31.w ,height: 31.h,),


            ],
          ),
        ),
      ),
    );
  }
}
