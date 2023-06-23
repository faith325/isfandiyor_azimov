import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class MesengersWidget extends StatelessWidget {
  const MesengersWidget({Key? key, required this.image}) : super(key: key);
  final String image;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 55.h,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFBE9173),width:1.w),
          borderRadius: BorderRadius.circular(30)
      ),
      child:Center(
          child: SvgPicture.asset(image,width: 20.w)
      ),
    );
  }
}
