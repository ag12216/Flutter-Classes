
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:society/api_call.dart';
import 'package:society/constants.dart';
import 'package:society/learn.dart';
import 'package:society/routes.dart';
import 'package:society/todolist.dart';

class ToDoForm extends StatefulWidget {
  const ToDoForm({super.key});

  @override
  State<ToDoForm> createState() => _ToDoFormState();
}

class _ToDoFormState extends State<ToDoForm> {
  TextEditingController todoDescription = TextEditingController();
  

  String title = "Enter the description.";
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar('Todo Form',context,isBackButton: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text(title,style: const TextStyle(fontSize: 20,color: Colors.red),),
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
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () => navigateToToDoList(),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: const BoxDecoration(
                color: Colors.orange,
                // borderRadius: BorderRadius.circular(40)
              ),
              child: const Text("ToDo",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 15),),
            ),
          ),

          const SizedBox(height: 10),
          Visibility(
            visible: false,
            child: Row(children: [
              Expanded(
                flex: 1,
                child: GestureDetector(
                onTap: () => onButtonPressed(),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    // borderRadius: BorderRadius.circular(40)
                  ),
                  child: const Text("Submit",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 15),),
                ),
                          ),
              ),
            const SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () => navigateToToDoList(),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    // borderRadius: BorderRadius.circular(40)
                  ),
                  child: const Text("ToDo",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 15),),
                ),
              ),
            )
            ]),
          ),

          Image.asset("assets/profile.png",height: 80,width: 80),
          
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
    Navigator.of(context).pushNamed(Routes.listing);
    // getToDoList();
    return;
    // setState(() {
    //   title = (title == "You Clicked me") ? "Enter Your Description" :"You Clicked me";
    // });
    if(todoDescription.text.trim().isEmpty){
      showToast("Please enter something !!");
      return;
    }
    try{

      // Learn learn = Learn();
      // learn.title
      // Learn.appName

      // SingleTo Class
      SharedPreferences preferences = await SharedPreferences.getInstance();
      Map<String, String> params = {
        "title": todoDescription.text.trim()
      };

      List<Map<String, String>> payload = [];
      // preferences.setString(key, value)

      var result = preferences.getString(toDoKey);
      if(result != null){
        var resultParams = jsonDecode(result) as List; // Explict Type Casting
        // int.parse('34'); // Implicit Type Casting
        Map<String, String> params2 = {};
        for(int i=0;i<resultParams.length;i++){
         params2['title'] = resultParams[i]['title'];
         payload.add(params2);
        }
        
        // var res = resultParams.map((e) => e as Map<String,dynamic>).toList();
        // payload = res;
        // print(payload);
        
      }
      payload.add(params);
      
      preferences.setString(toDoKey, jsonEncode(payload));
      // Optional
      var result2 = preferences.getString(toDoKey);
      print(result2);
      todoDescription.text = '';
      showToast("Details got saved successfully!!");
    }catch(error){
      print(error);
    }
  } 

  void navigateToToDoList(){
    // Navigator.of(context).push()
    // Navigator.of(context).pushReplacement(routeName)
    
    
    // Constructor data passing
    // List<String> currentList = ["Lalit","Shilpa","Divya", "Madhuri"];
    // Navigator.push(context, MaterialPageRoute(builder: (_) => ToDoList(list: currentList)));

    // Constructor data passing
    List<String> currentList = ["Hello","Welcome","To", "Flutter", "Classes"];

    Navigator.of(context).pushNamed(Routes.toDoList,arguments: {'data': currentList});


  }

}