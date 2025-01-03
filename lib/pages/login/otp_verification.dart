
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:provider/provider.dart';
import 'package:society_hub/pages/login/forgot_password_controller.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_view.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {

  @override
  Widget build(BuildContext context) {
    return Consumer<ForgotPasswordController>(builder: (_, viewModel, child) => Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,children: [
            TextView(title: "Enter Verification Code", textAlign: TextAlign.center),
            SizedBox(height: DeviceHeight.s10),
            OtpTextField(
              numberOfFields: 4,
              fieldWidth: DeviceWidth.s60,
              borderRadius: BorderRadius.circular(DeviceHeight.s5),
              borderWidth: 1,
              clearText: viewModel.clearText ?? false,
              enabledBorderColor: CColors.textGrey,
              focusedBorderColor: CColors.primary,
              showFieldAsBox: true,
              enabled: viewModel.enabled,
              handleControllers: (controllers) => {},
              onCodeChanged: (String pin) => viewModel.setOtp(pin),
            ),
            SizedBox(height: DeviceHeight.s10),
            GestureDetector(
              onTap: () => viewModel.resetOtpField(),
              child: TextView(title: "Enter new otp",fontSize: FontSizes.s14,textAlign: TextAlign.center,color: CColors.primary,fontWeight: FontWeight.w400))
          
          ]),
        ),
    ));
  }
}