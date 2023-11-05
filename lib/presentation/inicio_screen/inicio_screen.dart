import 'package:fixapp/core/app_export.dart';
import 'package:fixapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray200Cc.withOpacity(0.9),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 65.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(right: 65.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 23.h),
                          child: Text(
                            "Bienvenidos",
                            style: theme.textTheme.displaySmall,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLogo,
                          height: 103.v,
                          width: 167.h,
                          margin: EdgeInsets.only(left: 12.h),
                        ),
                        SizedBox(height: 6.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            " la mejor asistencia tecnica vehicular..",
                            style: CustomTextStyles.bodyMediumBlack900,
                          ),
                        ),
                        SizedBox(height: 52.v),
                        SizedBox(
                          height: 565.v,
                          width: 294.h,
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImagenauto,
                                height: 494.v,
                                width: 294.h,
                                radius: BorderRadius.circular(
                                  29.h,
                                ),
                                alignment: Alignment.topCenter,
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 110.v,
                                    right: 10.h,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomElevatedButton(
                                        text: "Log in",
                                      ),
                                      SizedBox(height: 55.v),
                                      CustomElevatedButton(
                                        text: "Register",
                                        buttonStyle:
                                            CustomButtonStyles.fillBlueCc,
                                      ),
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
    );
  }
}
