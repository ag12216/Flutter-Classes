
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society/pages/login/login_controller.dart';
import 'package:society/resources/assets.dart';
import 'package:society/resources/ccolors.dart';
import 'package:society/resources/constant.dart';
import 'package:society/widgets/text_field.dart';
import 'package:society/widgets/text_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<LoginController>(builder: (_, viewModel, child) =>  Scaffold(
          body: Stack(
            // alignment: Alignment.center,
            fit: StackFit.expand,
            children: [
            Image.asset(Assets.background),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: const BoxDecoration(
                  color: CColors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))
                ),
                child: Column(mainAxisSize: MainAxisSize.min,crossAxisAlignment: CrossAxisAlignment.stretch,children: [
                    TextView(title: viewModel.title ?? 'Login',fontSize: 24,fontWeight: FontWeight.w500,textAlign: TextAlign.center),
                    SizedBox(height: 50),
                    TextView(title:"E-mail",fontSize: 16),
                    SizedBox(height: 5),
                    AppTextField(controller: viewModel.emailController, hintText: 'Enter the email'),
                
                    SizedBox(height: 20),
                
                    TextView(title:"Password",fontSize: 16),
                    SizedBox(height: 5),
                    AppTextField(controller: viewModel.passwordController, hintText: 'Enter the password',isPasswordField: !viewModel.isPasswordVisible,suffixIcon: GestureDetector(
                      onTap: () => viewModel.navigateToRegister(context),
                      child: Icon(!viewModel.isPasswordVisible ? Icons.menu :Icons.remove_red_eye)),)
                    
                ]),
              ),
            )
          
          ]),
        ),
      )
        
      ),
    );
  }
}