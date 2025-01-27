
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:society_hub/pages/visitors/profile_bottom_sheet.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/constant.dart';
import 'package:society_hub/resources/protocols.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/response/login_response.dart';
import 'package:society_hub/widgets/text_view.dart';

class VisitorController extends BaseModel {
  List<String> requests = ['Upcoming','Past','Declined'];
  String? selectedRequest = 'Upcoming';

  File? imageFile;

  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController flatController = TextEditingController();
  TextEditingController wingController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController alternateContactController = TextEditingController();


  void didTapRequestButton(String? value){
    selectedRequest = value;
    notifyListeners();
  }

  void setInitalDataFields(){
    fnameController.text = LoginResponse2Response.shared.firstName ?? '';
    lnameController.text = LoginResponse2Response.shared.lastName ?? '';
    flatController.text = '${LoginResponse2Response.shared.flatNo ?? ''}';
    wingController.text = LoginResponse2Response.shared.wing ?? '';
    contactController.text = LoginResponse2Response.shared.phone ?? '';
    emailController.text = LoginResponse2Response.shared.email ?? '';
    alternateContactController.text = LoginResponse2Response.shared.alternateContactNo ?? '';
  }

  void openBottomSheet(BuildContext context) {
    setInitalDataFields();
    ProfileBottomSheet.presentBottomSheet(context, this);
  }

  void openImageSelection(BuildContext context){
    openImagePicker(context, onSelection: (imageFile){
      this.imageFile = imageFile;
      notifyListeners();
    });
  }

}