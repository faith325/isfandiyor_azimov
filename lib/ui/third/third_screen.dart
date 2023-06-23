import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isfandiyor_azimov/ui/first/widgets/button_widgets.dart';
import 'package:isfandiyor_azimov/ui/third/widgets/text_field_widget.dart';
import 'package:isfandiyor_azimov/utills/color.dart';
import 'package:isfandiyor_azimov/utills/icons.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}



class _ThirdScreenState extends State<ThirdScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    dobController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      usernameController.text = prefs.getString('username') ?? '';
      firstNameController.text = prefs.getString('firstName') ?? '';
      lastNameController.text = prefs.getString('lastName') ?? '';
      dobController.text = prefs.getString('dob') ?? '';
    });
  }

  Future<void> saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', usernameController.text);
    await prefs.setString('firstName', firstNameController.text);
    await prefs.setString('lastName', lastNameController.text);
    await prefs.setString('dob', dobController.text);
  }



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
                        Row(
                          children: [
                            Text(
                                firstNameController.text,

                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 24,fontWeight: FontWeight.w500,color: AppColors.C_674D3F)
                            ),
                            SizedBox(width: 5.w,),
                            Text(
                                lastNameController.text,

                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 24,fontWeight: FontWeight.w500,color: AppColors.C_674D3F)
                            )

                          ],
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
              TextFieldWidget(title: "Username", textActionType: TextInputAction.next, controller: usernameController, keyboardType: TextInputType.name,),
              SizedBox(height: 38.h,),
              TextFieldWidget(title: "First name", textActionType: TextInputAction.next, controller: firstNameController, keyboardType: TextInputType.name,),
              SizedBox(height: 38.h,),
              TextFieldWidget(title: "Last name", textActionType: TextInputAction.next, controller: lastNameController, keyboardType: TextInputType.name,),
              SizedBox(height: 38.h,),
              TextFieldWidget(title: "Date of birth", textActionType: TextInputAction.done, controller: dobController, keyboardType: TextInputType.datetime,),
              SizedBox(height: 50.h,),
              Center(child: GestureDetector(
                  onTap: (){
                    saveData();
                  },
                  child: ButtonWidget(text: "Sign Out")))

              



            ],
          ),
        ),
      ),
    );
  }
}
