
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ToDoForm extends StatefulWidget {
  const ToDoForm({super.key});

  @override
  State<ToDoForm> createState() => _ToDoFormState();
}

class _ToDoFormState extends State<ToDoForm> {
  TextEditingController todoDescription = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          const Text("Enter the description.",style: TextStyle(fontSize: 20,color: Colors.red),),
          const SizedBox(height: 20),
          TextField(
            controller: todoDescription,
            // onChanged: (String? value){ // <-- Closure Function
            //   print(value);
            // },
            // onSubmitted: (String? value){
            //   print(value);
            // },
            decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)))
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () => onButtonPressed(),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: const BoxDecoration(
                color: Colors.red,
                // borderRadius: BorderRadius.circular(40)
              ),
              child: const Text("Submit",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 15),),
            ),
          )
          // TextButton(
          //   style: TextButton.styleFrom(
          //     backgroundColor: Colors.red,
          //     shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero))
          //   ),
          //   onPressed: () => onButtonPressed(), child: const Text("Submit",style: TextStyle(color: Colors.white,fontSize: 15),)
          // )
        ]),
      ),
    );
  }

  void onButtonPressed() async{
    if(todoDescription.text.trim().isEmpty){
      showToast("Please enter something !!");
      return;
    }
    try{
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setString("todo", todoDescription.text.trim());
      showToast("Details got saved successfully!!");
    }catch(error){
      print(error);
    }
  } 

}


class Abc {
  Abc(){
    print("dfdsf");
  }
  String a = 'rewrw';

  void method(){

  }
}