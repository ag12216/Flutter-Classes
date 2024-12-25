import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society/resources/sizes.dart';
import 'package:society/resources/assets.dart';
import 'package:society/resources/ccolors.dart';
import 'package:society/widgets/text_view.dart';
import 'package:society/resources/constant.dart';
import 'package:society/widgets/text_field.dart';
import 'package:society/widgets/text_button.dart';
import 'package:society/pages/login/login_controller.dart';


class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  
  @override
  Widget build(BuildContext context) {
    return Consumer<LoginController>(builder: (_, viewModel, child) => Scaffold(
      body: viewModel.loginJson.isEmpty? const CircularProgressIndicator(): SafeArea(
        child: Scaffold(
          body: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: [
            Image.asset(Assets.background),
            Positioned(
              top: DeviceHeight.s30,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(DeviceHeight.s130/2),
                child: Image.asset(Assets.logo,height: DeviceHeight.s130,width: DeviceWidth.s130,fit: BoxFit.cover))),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: DeviceWidth.s20, vertical: DeviceHeight.s20),
                decoration: BoxDecoration(
                  color: CColors.white,
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 8,
                      offset: const Offset(0.4,0.5)
                    )
                  ]
                ),
                child: Column(mainAxisSize: MainAxisSize.min,crossAxisAlignment: CrossAxisAlignment.stretch,children: [
                    TextView(title: viewModel.getValue('login'),fontSize: FontSizes.s24,fontWeight: FontWeight.w500,textAlign: TextAlign.center),
                    SizedBox(height: DeviceHeight.s50),
                    TextView(title: viewModel.getMapValue('email', 'text'),fontSize: FontSizes.s16),
                    SizedBox(height: DeviceHeight.s5),
                    AppTextField(controller: viewModel.emailController, hintText: viewModel.getMapValue('email', 'hint'),errorText: viewModel.emailError),
                
                    SizedBox(height: DeviceHeight.s20),
                
                    TextView(title: viewModel.getMapValue('password', 'text'),fontSize: FontSizes.s16),
                    SizedBox(height: DeviceHeight.s5),
                    AppTextField(controller: viewModel.passwordController, hintText: viewModel.getMapValue('password', 'hint'),isPasswordField: !viewModel.isPasswordVisible,suffixIcon: GestureDetector(
                      onTap: () => viewModel.makePasswordVisible(),
                      child: !viewModel.isPasswordVisible ? Image.asset(Assets.eyeOff,height: DeviceHeight.s20,width: DeviceWidth.s20):Icon(Icons.remove_red_eye)),errorText: viewModel.passwordError),
        
        
                      SizedBox(height: DeviceHeight.s10),
                      TextView(title: viewModel.getValue('forgotPassword'),color: CColors.textGrey,fontSize: FontSizes.s14,textAlign: TextAlign.right,isUnderLine: true),
        
                    SizedBox(height: DeviceHeight.s20),
        
                    AppPrimaryButton(text: viewModel.getValue('login'),onPressed: () => viewModel.onButtonClicked(context)),
        
                    SizedBox(height: DeviceHeight.s20),
                    GestureDetector(
                      onTap: () => viewModel.navigateToRegister(context),
                      child: RichText(text: TextSpan(text: viewModel.getValue('noAccount'),style: TextStyle(color: CColors.black,fontFamily: poppins, fontSize: FontSizes.s14,fontWeight: FontWeight.w200),children: [
                        TextSpan(text: ' ${viewModel.getValue('register')}',style: const TextStyle(color: CColors.primary,fontWeight: FontWeight.w500))
                      ]),textAlign: TextAlign.center),
                    )
                      
                ]),
              ),
            )
          
          ]),
        )
        
      ),
    ));
  }
}