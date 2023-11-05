import 'package:fixapp/core/app_export.dart';
import 'package:fixapp/widgets/custom_elevated_button.dart';
import 'package:fixapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterOneScreen extends StatelessWidget {
  RegisterOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userProfileController = TextEditingController();

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

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
                SizedBox(height: 23.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(left: 21.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLogo,
                            height: 87.v,
                            width: 132.h,
                          ),
                          SizedBox(
                            height: 701.v,
                            width: 339.h,
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 76.v),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 31.h,
                                      vertical: 124.v,
                                    ),
                                    decoration:
                                        AppDecoration.fillOnPrimary.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder29,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        _buildUserProfile(context),
                                        SizedBox(height: 38.v),
                                        Padding(
                                          padding: EdgeInsets.only(left: 3.h),
                                          child: Text(
                                            "number",
                                            style: theme.textTheme.bodyMedium,
                                          ),
                                        ),
                                        SizedBox(height: 4.v),
                                        Divider(
                                          indent: 8.h,
                                          endIndent: 25.h,
                                        ),
                                        SizedBox(height: 37.v),
                                        _buildEmailField(context),
                                        SizedBox(height: 30.v),
                                        _buildPasswordField(context),
                                        SizedBox(height: 9.v),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgIconoUsuario1,
                                  height: 174.v,
                                  width: 179.h,
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(left: 69.h),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: SizedBox(
                                    height: 225.v,
                                    width: 284.h,
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgToyotaViosCar214x284,
                                          height: 214.v,
                                          width: 284.h,
                                          alignment: Alignment.topCenter,
                                        ),
                                        _buildRegisterButton(context),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 27.h,
      ),
      child: CustomTextFormField(
        controller: userProfileController,
        hintText: "Name",
        contentPadding: EdgeInsets.symmetric(horizontal: 2.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 26.h,
      ),
      child: CustomTextFormField(
        controller: emailFieldController,
        hintText: "e-mail",
        textInputType: TextInputType.emailAddress,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 27.h),
      child: CustomTextFormField(
        controller: passwordFieldController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildRegisterButton(BuildContext context) {
    return CustomElevatedButton(
      width: 208.h,
      text: "Register",
      alignment: Alignment.topLeft,
    );
  }
}
