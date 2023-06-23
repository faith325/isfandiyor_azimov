import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utills/color.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.text}) : super(key: key);
  final String text;


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 55.h,
      width: width * 314 /375,
      decoration: BoxDecoration(
          color: AppColors.C_BE9173,
          borderRadius: BorderRadius.circular(30.r)
      ),
      child: Center(
        child: Text(
          text,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16,fontWeight: FontWeight.w700,color: AppColors.white)
        ),
      ),
    );
  }
}
