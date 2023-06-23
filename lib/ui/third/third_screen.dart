import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isfandiyor_azimov/utills/color.dart';
import 'package:isfandiyor_azimov/utills/icons.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:SystemUiOverlayStyle(
            statusBarColor: AppColors.C_674D3F
        ),
        toolbarHeight: 0,
        elevation: 0,
      ),
      backgroundColor: AppColors.main_color,
      body: SafeArea(
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
              SizedBox(height: 30.h,),
              Container(
                padding: EdgeInsets.only(left:29.w ),
                child: Text(
                    "Profile",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 32,fontWeight: FontWeight.w700,color: AppColors.C_674D3F)

                ),
              ),
              SizedBox(height: 24.h,),
              Container(
                padding: EdgeInsets.only(left: 39.w),
                child: Row(
                  children: [
                    Image.asset(AppIcons.profile,height: 81.h,width: 81.w,),
                    SizedBox(width: 24.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Jackie John",
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 24,fontWeight: FontWeight.w500,color: AppColors.C_674D3F)
                        ),
                        SizedBox(height: 10.h,),
                        Text(
                            "Online",
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20,fontWeight: FontWeight.w400,color: AppColors.C_674D3F)
                        ),


                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 27.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:30.w ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Username",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 13,fontWeight: FontWeight.w400,color: AppColors.C_464646)
                    ),
                    SizedBox(height: 4.h,),
                    TextField(
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 13,fontWeight: FontWeight.w400,color: AppColors.C_464646),
                      decoration: InputDecoration(
                       hintText:
                          "Username",
                        hintStyle:Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 13,fontWeight: FontWeight.w400,color: AppColors.C_464646.withOpacity(0.5)),

                      ),

                    )
                  ],
                ),

              )



            ],
          ),
        ),
      ),
    );
  }
}
