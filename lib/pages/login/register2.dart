import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_hub/pages/login/register_controller.dart';


class RegisterView2 extends StatelessWidget {
 const RegisterView2({super.key});

 @override
 Widget build(BuildContext context) {
   return Consumer<RegisterController>(builder: (_,viewModel,child) => Scaffold(
     body: Stack(
       children: [
         // Background Image
         Image.asset(
           'assets/login/registerbg.png',
           fit: BoxFit.cover,
           width: double.infinity,
           height: double.infinity,
         ),

         // Logo at the Top
         Align(
           alignment: Alignment.topCenter,
           child: Padding(
             padding: const EdgeInsets.only(top: 102.0),
             child: ClipOval(
               child: Image.asset(
                 'assets/login/logoo.png',
                 width: 129,
                 height: 129,
                 fit: BoxFit.cover,
               ),
             ),
           ),
         ),


         // Form Container
      
           SingleChildScrollView(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Container(
                   padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
                   decoration: BoxDecoration(
                     color: Colors.white.withOpacity(0.9),
                     borderRadius: const BorderRadius.only(
                       topLeft: Radius.circular(40.0),
                       topRight: Radius.circular(40.0),
                     ),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.black.withOpacity(0.1),
                         blurRadius: 11,
                         offset: const Offset(0, -5),
                       ),
                     ],
                   ),
                   child: Form(
                     key: RegisterController().formKey,
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         // Register Heading
                         const Padding(
                           padding: EdgeInsets.only(bottom: 20.0,top: 100),
                           child: Text.rich(
                             TextSpan(
                               text: 'Register',
                               style: TextStyle(
                                 fontSize: 24,
                                 fontWeight: FontWeight.bold,
                                 color: Color.fromRGBO(30, 41, 59, 1),
                               ),
                             ),
                           ),
                         ),
                   
                   
                         // First Name and Last Name Fields
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Expanded(
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   const Text.rich(
                                     TextSpan(
                                       text: "First Name",
                                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                       children: [
                                         TextSpan(
                                           text: '*',
                                           style: TextStyle(color: Colors.red),
                                         ),
                                       ],
                                     ),
                                   ),
                                   const SizedBox(height: 8),
                                   TextFormField(
                                     decoration: const InputDecoration(
                                       border: OutlineInputBorder(),
                                       hintText: "John",
                                     ),
                                     validator: (value) {
                                       if (value == null || value.isEmpty) {
                                         return 'First name is required';
                                       }
                                       return null;
                                     },
                                   ),
                                 ],
                               ),
                             ),
                             const SizedBox(width: 12),
                             Expanded(
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   const Text.rich(
                                     TextSpan(
                                       text: "Last Name",
                                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                       children: [
                                         TextSpan(
                                           text: '*',
                                           style: TextStyle(color: Colors.red),
                                         ),
                                       ],
                                     ),
                                   ),
                                   const SizedBox(height: 8),
                                   TextFormField(
                                     decoration: const InputDecoration(
                                       border: OutlineInputBorder(),
                                       hintText: "Doe",
                                     ),
                                     validator: (value) {
                                       if (value == null || value.isEmpty) {
                                         return 'Last name is required';
                                       }
                                       return null;
                                     },
                                   ),
                                 ],
                               ),
                             ),
                           ],
                         ),
                     const SizedBox(height: 20),
                   
                   
                     // Flat No and Wing Fields
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Expanded(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               const Text.rich(
                                 TextSpan(
                                   text: "Flat No",
                                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                   children: [
                                     TextSpan(
                                       text: '*',
                                       style: TextStyle(color: Colors.red),
                                     ),
                                   ],
                                 ),
                               ),
                               const SizedBox(height: 8),
                               TextFormField(
                                 decoration: const InputDecoration(
                                   border: OutlineInputBorder(),
                                   hintText: "302",
                                 ),
                                 validator: (value) {
                                   if (value == null || value.isEmpty) {
                                     return 'Flat No is required';
                                   }
                                   return null;
                                 },
                               ),
                             ],
                           ),
                         ),
                         const SizedBox(width: 12),
                         Expanded(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               const Text.rich(
                                 TextSpan(
                                   text: "Wing",
                                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                                   children: [
                                     TextSpan(
                                       text: '*',
                                       style: TextStyle(color: Colors.red),
                                     ),
                                   ],
                                 ),
                               ),
                               const SizedBox(height: 8),
                               TextFormField(
                                 decoration: const InputDecoration(
                                   border: OutlineInputBorder(),
                                   hintText: "A",
                                 ),
                                 validator: (value) {
                                   if (value == null || value.isEmpty) {
                                     return 'Wing is required';
                                   }
                                   return null;
                                 },
                               ),
                             ],
                           ),
                         ),
                       ],
                     ),
                   
                   
                     const SizedBox(height: 12),
                     // Member Type Field
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         const Text.rich(
                           TextSpan(
                             text: "Member Type",
                             style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                             children: [
                               TextSpan(
                                 text: '*',
                                 style: TextStyle(color: Colors.red),
                               ),
                             ],
                           ),
                         ),
                         const SizedBox(height: 8),
                         TextFormField(
                           decoration: const InputDecoration(
                             border: OutlineInputBorder(),
                             hintText: "Owner/Tenant",
                           ),
                           validator: (value) {
                             if (value == null || value.isEmpty) {
                               return 'Member Type is required';
                             }
                             return null;
                           },
                         ),
                       ],
                     ),
                   
                   
                     const SizedBox(height: 12),
                    
                      Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         const Text.rich(
                           TextSpan(
                             text: "Contact No",
                             style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                             children: [
                               TextSpan(
                                 text: '*',
                                 style: TextStyle(color: Colors.red),
                               ),
                             ],
                           ),
                         ),
                         const SizedBox(height: 8),
                         TextFormField(
                           decoration: const InputDecoration(
                             border: OutlineInputBorder(),
                             hintText: "Enter your contact number",
                           ),
                           keyboardType: TextInputType.phone,
                           validator: (value) {
                             if (value == null || value.isEmpty) {
                               return 'Contact No is required';
                             } else if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                               return 'Enter a valid 10-digit contact number';
                             }
                             return null;
                           },
                         ),
                       ],
                     ),
                    
                                     
                     const SizedBox(height: 20),
                   
                   
                     // Email ID Field
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         const Text.rich(
                           TextSpan(
                             text: "Email ID",
                             style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                             children: [
                               TextSpan(
                                 text: '*',
                                 style: TextStyle(color: Colors.red),
                               ),
                             ],
                           ),
                         ),
                         const SizedBox(height: 8),
                         TextFormField(
                           decoration: const InputDecoration(
                             border: OutlineInputBorder(),
                             hintText: "Enter your email",
                           ),
                           keyboardType: TextInputType.emailAddress,
                           validator: (value) {
                             if (value == null || value.isEmpty) {
                               return 'Email ID is required';
                             } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                               return 'Enter a valid email address';
                             }
                             return null;
                           },
                         ),
                       ],
                     ),
                   
                   
                     const SizedBox(height: 20),
                   
                   
                     // Emergency Contact No Field
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         const Text.rich(
                           TextSpan(
                             text: "Emergency Contact No",
                             style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                             children: [
                               TextSpan(
                                 text: '*',
                                 style: TextStyle(color: Colors.red),
                               ),
                             ],
                           ),
                         ),
                         const SizedBox(height: 8),
                         TextFormField(
                           decoration: const InputDecoration(
                             border: OutlineInputBorder(),
                             hintText: "Enter emergency contact number",
                           ),
                           keyboardType: TextInputType.phone,
                           validator: (value) {
                             if (value == null || value.isEmpty) {
                               return 'Emergency Contact No is required';
                             } else if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                               return 'Enter a valid 10-digit emergency contact number';
                             }
                             return null;
                           },
                         ),
                       ],
                     ),
                     
                      const SizedBox(height: 23),
                   
                   
                       SizedBox(
                         width: double.infinity,
                         height: 48,
                         child: ElevatedButton(
                           onPressed: () {
                             if (viewModel.formKey.currentState
                                     ?.validate() ??
                                 false) {
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                   builder: (context) =>  const RegisterView2(),
                                 ),
                               );
                             }
                           },
                           style: ElevatedButton.styleFrom(
                             backgroundColor:
                                 const Color.fromRGBO(255, 168, 0, 1),
                             foregroundColor: Colors.white,
                           ),
                           child: const Text(
                             'Login',
                             style: TextStyle(
                               fontSize: 18,
                             ),
                           ),
                         ),
                       ),
                   
                   
                       const SizedBox(height: 19),
                   
                   
                        const Text.rich(
                         TextSpan(
                           text: "Don’t have an account? ",
                           style: const TextStyle(
                               fontSize: 14.0, color: Colors.grey),
                           children: <InlineSpan>[
                             TextSpan(
                               text: "Register",
                               style: const TextStyle(
                                 fontSize: 14.0,
                                 color: Color.fromRGBO(255, 168, 0, 1),
                               ),
                             
                             ),
                           ],
                         ),
                       ),
                   ],
                                    ),
                                  ),
                 ),
               ],
             ),
           ),
       ],
   ),
   ),
   );
  
 }
}
