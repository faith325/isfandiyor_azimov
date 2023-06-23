import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utills/color.dart';
import '../../../utills/icons.dart';
class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key, required this.images, required this.title, required this.texts}) : super(key: key);
  final String images;
  final String title;
  final String texts;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  Column(
      children: [
        Container(
          width: 143.w,
          height: 182.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.C_ECE1CF
          ),
          padding: EdgeInsets.symmetric(horizontal: 13,vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(images,height: 73.h,width: 73.w,)),
              SizedBox(height: 12,),
              Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14,fontWeight: FontWeight.w700,color: AppColors.C_674D3F)
              ),
              SizedBox(width: 10.w,),
              Text(
                  texts,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.C_674D3F)
              ),


            ],
          ),
        ),
        SizedBox(height: 5.h,),
    Center(
    child: Container(
    height: 27.h,
    width: 87.w,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    color: AppColors.C_674D3F
    ),
    child: Center(
    child: Text(
    'Order',
    style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16,fontWeight: FontWeight.w700,color: AppColors.white)

    ),
    ),
    ),
    )
      ],
    );
  }
}
