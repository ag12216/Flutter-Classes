
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_hub/pages/others/fields_controller.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/resources/validators.dart';
import 'package:society_hub/widgets/text_button.dart';
import 'package:society_hub/widgets/text_view.dart';

class FieldsView extends StatefulWidget {
  const FieldsView({super.key});

  @override
  State<FieldsView> createState() => _FieldsViewState();
}

class _FieldsViewState extends State<FieldsView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FieldsController>(builder: (_, viewModel, child) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: DeviceWidth.s20,vertical: DeviceHeight.s15),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.withValues(alpha: 0.5)),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withAlpha(20),
                    spreadRadius: 8,
                    blurRadius: 4,
                    offset: Offset(1, 2)
                  )
                ]
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: DeviceWidth.s20,vertical: DeviceHeight.s15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      controller: viewModel.emailController,
                      onChanged: (value) => viewModel.onChange(),
                      decoration: InputDecoration(
                        hintText: "Enter the email address",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black.withAlpha(10))
                        )
                      ),
                    ),
              
                    viewModel.isButtonClicked ? Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(height: 2),
                          TextView(title: Validators.validateEmail(viewModel.emailController.text.trim()),color: Colors.red,fontSize: FontSizes.s10)
                        ],
                      ): const SizedBox.shrink(),
              
                    // Visibility(
                    //   visible: viewModel.isButtonClicked && !(Validators.validateEmail(viewModel.emailController.text.trim()) == null),
                    //   child: Column(
                    //     mainAxisSize: MainAxisSize.min,
                    //     crossAxisAlignment: CrossAxisAlignment.stretch,
                    //     children: [
                    //       const SizedBox(height: 2),
                    //       TextView(title: Validators.validateEmail(viewModel.emailController.text.trim()),color: Colors.red,fontSize: FontSizes.s10)
                    //     ],
                    //   ),
                    // ),
                
                    // TextFormField(
                    //   controller: viewModel.emailController,
                    //   // autovalidateMode: AutovalidateMode.onUserInteraction,
                    //   // validator: (value) => Validators.validateEmail(value),
                    //   validator: Validators.validateEmail,
                      // decoration: InputDecoration(
                      //   hintText: "Enter the email address",
                      //   border: OutlineInputBorder(
                      //     borderSide: BorderSide(color: Colors.black.withAlpha(10))
                      //   )
                      // ),
                    // ),
                    
                    SizedBox(height: DeviceHeight.s20),
                    AppPrimaryButton(
                      onPressed: () => viewModel.didTapSubmitButton(),
                      text: "Submit"
                    )
                
                  ],
                ),
              ),
            ),
          ),
        ),
    ));
  }
}