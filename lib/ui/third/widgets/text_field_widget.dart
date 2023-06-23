import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isfandiyor_azimov/utills/color.dart';
class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key, required this.title,  required this.textActionType, required this.controller, required this.keyboardType}) : super(key: key);
  final String title;
  final TextInputAction textActionType;
  final TextEditingController controller;
  final TextInputType keyboardType;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:30.w ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 13,fontWeight: FontWeight.w400,color: AppColors.C_464646)
          ),
          SizedBox(height: 4.h,),
          TextField(
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 13,fontWeight: FontWeight.w400,color: AppColors.C_464646),
            decoration: InputDecoration(
                hintText:
                title,
                hintStyle:Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 13,fontWeight: FontWeight.w400,color: AppColors.C_464646.withOpacity(0.5)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.C_DEE1EF,
                  ),

                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.C_DEE1EF,
                  ),
                ),
                border:  UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.C_DEE1EF,)
                )
            ),
            textInputAction: textActionType,
            controller: controller,
            keyboardType: keyboardType,

          )
        ],
      ),

    );
  }
}
