
import 'package:flutter/material.dart';
import 'package:society_hub/pages/visitors/labelTextField.dart';
import 'package:society_hub/pages/visitors/visitor_controller.dart';
import 'package:society_hub/resources/assets.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/response/login_response.dart';
import 'package:society_hub/widgets/text_button.dart';
import 'package:society_hub/widgets/text_view.dart';

class ProfileBottomSheet {

  static void presentBottomSheet(BuildContext context,VisitorController viewModel){
    showBottomSheet(
      context: context, 
      showDragHandle: true,
      backgroundColor: CColors.white,
      elevation: 10,
      enableDrag: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      constraints: const BoxConstraints(minHeight: 200, maxHeight: 800),
      builder: (buildContext){
      return Draggable(
        feedback: const TextView(title: 'title'),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: DeviceWidth.s20),
            child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: DeviceHeight.s20),
              ClipRRect(
                borderRadius: BorderRadius.circular(DeviceRadius.s60),
                child: Image.network(LoginResponse2Response.shared.profileImage ?? '',fit: BoxFit.cover,height: DeviceHeight.s100,width: DeviceWidth.s100,
                loadingBuilder: (context, child, loadingProgress) => const CircularProgressIndicator(),
                errorBuilder: (context, error, stackTrace) => Image.asset(Assets.logo,fit: BoxFit.contain,height: DeviceHeight.s100,width: DeviceWidth.s100))
                ),
              
              SizedBox(height: DeviceHeight.s10),
              Row(children: [
                Expanded(child: LabelTextField(label: 'First Name',hintText: 'Enter the first name',controller: viewModel.fnameController)),
                SizedBox(width: DeviceWidth.s5),
                Expanded(child: LabelTextField(label: 'Last Name',hintText: 'Enter the last name',controller: viewModel.lnameController))
              ]),
          
              SizedBox(height: DeviceHeight.s10),
              Row(children: [
                Expanded(child: LabelTextField(label: 'Flat',hintText: 'Enter the flat no',controller: viewModel.flatController,textInputType: TextInputType.number)),
                SizedBox(width: DeviceWidth.s5),
                Expanded(child: LabelTextField(label: 'Wing',hintText: 'Enter the wing name',controller: viewModel.wingController))
              ]),
          
              SizedBox(height: DeviceHeight.s10),
              LabelTextField(label: 'Contact',hintText: 'Enter the contact number',controller: viewModel.contactController,textInputType: TextInputType.phone),
          
              SizedBox(height: DeviceHeight.s10),
              LabelTextField(label: 'Email',hintText: 'Enter the email id',controller: viewModel.emailController,textInputType: TextInputType.emailAddress),
          
              SizedBox(height: DeviceHeight.s10),
              LabelTextField(label: 'Alternate Contact no',hintText: 'Enter the alternate contact number',controller: viewModel.alternateContactController,textInputType: TextInputType.phone),

              SizedBox(height: DeviceHeight.s15),
              Row(children: [
                Expanded(child: AppPrimaryButton(
                  onPressed: () => Navigator.of(buildContext).pop(),
                  text: 'Cancel',
                  buttonColor: CColors.white,
                  textColor: CColors.black,
                  fontWeight: FontWeight.w300,
                  textSize: FontSizes.s12,
                  borderColor: CColors.orange1)),

                SizedBox(width: DeviceWidth.s5),

                Expanded(child: AppPrimaryButton(
                  text: 'Save',
                  buttonColor: CColors.orange1,
                  textColor: CColors.white,
                  fontWeight: FontWeight.w300,
                  textSize: FontSizes.s12,
                  borderColor: CColors.orange1)),
              ]),
              SizedBox(height: DeviceHeight.s50),
              
          
            ],
                  ),
          ),
        ));
    });
  }
}