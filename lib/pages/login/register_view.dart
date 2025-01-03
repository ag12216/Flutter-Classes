import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_view.dart';
import 'package:society_hub/widgets/text_field.dart';
import 'package:society_hub/pages/login/register_controller.dart';


class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<RegisterController>(builder: (_, viewModel, child) => Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: DeviceWidth.s8),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                  TextView(title: viewModel.getValue("register"),fontSize: FontSizes.s24,fontWeight: FontWeight.w500,textAlign: TextAlign.center),
            
                  SizedBox(height: DeviceHeight.s40),
                  Row(children: [
                    Expanded(
                      child: Column(mainAxisSize: MainAxisSize.min,crossAxisAlignment: CrossAxisAlignment.stretch,children: [
                        TextView(title: viewModel.getValue("fname"),fontSize: FontSizes.s14),
                        SizedBox(height: DeviceHeight.s4),
                        AppTextField(controller: viewModel.firstNameController,hintText: viewModel.getValue('fnameHint'))
                      ]),
                    ),
                    SizedBox(width: DeviceWidth.s10),
                    Expanded(
                      child: Column(mainAxisSize: MainAxisSize.min,crossAxisAlignment: CrossAxisAlignment.stretch,children: [
                        TextView(title: viewModel.getValue("lname"),fontSize: FontSizes.s14),
                        SizedBox(height: DeviceHeight.s4),
                        AppTextField(controller: viewModel.lastNameController,hintText: viewModel.getValue('lnameHint'))
                      ]),
                    )
                  ]),
            
            
              ]),
          ),
        ),
      ),
    ));
  }
}