import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:isfandiyor_azimov/ui/first/widgets/button_widgets.dart';
import 'package:isfandiyor_azimov/ui/first/widgets/messengers_widget.dart';
import 'package:isfandiyor_azimov/utills/color.dart';
import 'package:isfandiyor_azimov/utills/icons.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

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
        child: Expanded(
          child: ListView(
            children:[ Column(
              children: [
                Stack(
                  children: [
                    Container(
                        child: Image.asset(AppIcons.appbar)),
                    Container(
                      margin: EdgeInsets.only(left: 46.w,top: 56.h),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Grab a cup of",
                                style: TextStyle(color: AppColors.C_EDE0D4,fontSize: width*(28/375),fontWeight: FontWeight.w700),),
                              Text(
                                "coffee",
                                style: TextStyle(color: AppColors.C_E7BC91,fontSize: width*(64/375),fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          Image.asset(AppIcons.coffee,width: 108.w,),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height:35.h),
                Center(
                    child: Image.asset(AppIcons.cofee_beans,height: 61.h,width: 61.w,)
                ),
                SizedBox(height: 15.h,),
                ButtonWidget(text: "Login"),
                SizedBox(height: 72.h,),
                Center(
                  child: Text(
                    "Don’t have an account?",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 13,fontWeight: FontWeight.w400,color: AppColors.C_464646)

                  ),
                ),
                SizedBox(height: 6.h,),
                ButtonWidget(text: "Sign In"),
                SizedBox(height: 14.h,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [

                      MesengersWidget(image: AppIcons.google),

                      SizedBox(width: 15.w,),
                      MesengersWidget(image: AppIcons.fb)

                    ],
                  ),
                ),
              ],
            ),
            ],
          ),
        ),
      ),
    );
  }
}