import 'package:fixapp/core/app_export.dart';
import 'package:fixapp/widgets/custom_elevated_button.dart';
import 'package:fixapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 62.v),
                SizedBox(
                  height: 132.v,
                  width: 275.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLogo,
                        height: 103.v,
                        width: 167.h,
                        alignment: Alignment.topCenter,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "asistencia tecnica vehicular ",
                          style: CustomTextStyles.titleLargeLight,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 38.v),
                Text(
                  "Bienvenidos..",
                  style: CustomTextStyles.titleLargeLight,
                ),
                SizedBox(height: 47.v),
                CustomElevatedButton(
                  text: "User name ",
                  margin: EdgeInsets.symmetric(horizontal: 30.h),
                  buttonStyle: CustomButtonStyles.fillBlueCcTL22,
                  buttonTextStyle: CustomTextStyles.titleLargeLight,
                ),
                SizedBox(height: 44.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                  child: CustomTextFormField(
                    controller: passwordController,
                    hintText: "Password",
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    borderDecoration: TextFormFieldStyleHelper.fillBlueCcTL22,
                    filled: true,
                    fillColor: appTheme.blue200Cc,
                  ),
                ),
                SizedBox(height: 36.v),
                CustomElevatedButton(
                  text: "Log in ",
                  margin: EdgeInsets.symmetric(horizontal: 30.h),
                ),
                SizedBox(height: 33.v),
                _buildCarDetails(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCarDetails(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 240.v,
        width: 305.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgToyotaViosCar,
              height: 225.v,
              width: 273.h,
              alignment: Alignment.bottomRight,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Don’t have an account ? ",
                style: CustomTextStyles.bodyMediumBlack900_1,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 1.v,
                  right: 71.h,
                ),
                child: Text(
                  "Sing Up",
                  style: CustomTextStyles.bodyMediumBlack900Regular.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
