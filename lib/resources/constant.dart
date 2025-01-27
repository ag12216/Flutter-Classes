import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_view.dart';



const poppins = 'Poppins';

const en = 'en';
const mr = 'mr';
const hi = 'hi';

const dashboardJson = 'dashboard';
const visitorJson = 'visitor';

String getLanguage(){
  String selectedLanguage = en;
  switch(selectedLanguage){
    case en:
      return en;
    case hi:
      return hi;
    case mr:
      return mr;
    default:
      return en;
  }
}

Future<Map<String, dynamic>> loadJsonFromAssets(String pathWithFileName) async {
  var response = await rootBundle.loadString("assets/json/$pathWithFileName.json");
  var result = jsonDecode(response) as Map<String, dynamic>;
  return result;
}

// Closure Function

void openImagePicker(BuildContext context,{required onSelection}) async {
    showDialog(context: context, builder: (buildContext){
      return Dialog(
        backgroundColor: CColors.white,
        child: Container(
          padding: EdgeInsets.all(DeviceRadius.s8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextView(title: "Select one option",textAlign: TextAlign.center),
              SizedBox(height: DeviceHeight.s20),
              Row(children: [
                Expanded(
                  child: GestureDetector(onTap: () async {
                    Navigator.of(buildContext).pop();
                    final imagePicker = ImagePicker();
                    var file = await imagePicker.pickImage(source: ImageSource.gallery);
                    var imageFile = File(file?.path ?? '');
                    onSelection(imageFile);
                  },
                    child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(Icons.browse_gallery_outlined),
                      SizedBox(height: DeviceHeight.s5),
                      TextView(title: "Gallery",textAlign: TextAlign.center)
                    ],
                    ),
                  ),
                ),
              SizedBox(width: DeviceWidth.s10),
              Expanded(
                child: GestureDetector(
                  onTap: () async {
                    Navigator.of(buildContext).pop();
                    final imagePicker = ImagePicker();
                    var file = await imagePicker.pickImage(source: ImageSource.camera);
                    var imageFile = File(file?.path ?? '');
                    onSelection(imageFile);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(Icons.camera),
                      SizedBox(height: DeviceHeight.s5),
                      TextView(title: "Camera",textAlign: TextAlign.center)
                    ],
                  ),
                ),
              )
              ])
              
              
            ],
          ),
        ),
      );
    });
  }
