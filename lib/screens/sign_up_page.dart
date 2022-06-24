
import 'package:flutter/material.dart';
import 'package:flutter_application/screens/login_screen.dart';

// ignore: use_key_in_widget_constructors
class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController usercontroller=TextEditingController();
  TextEditingController numbercontroller=TextEditingController();

  bool showPassword=true;
  // ignore: unused_field
  String _userEmail = '';

  // ignore: unused_field
  String _userName = '';

  // ignore: unused_field
  String _number = '';

 void _trySubmitForm(BuildContext context) {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(      
       resizeToAvoidBottomInset: false,
           body: SafeArea(
             child: Container(
              decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(4, 9, 35, 1),
            Color.fromRGBO(39, 105, 170, 1),
          ],
          begin: FractionalOffset.bottomLeft,
          end: FractionalOffset.topCenter
        )
        ),
              padding: const EdgeInsets.only(left: 16,right: 16),
              child: Column(                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const[
                       SizedBox(height: 15,),
                      Text('Create Account',style: TextStyle(fontSize: 26,
                      fontWeight: FontWeight.bold),),
                       SizedBox(height: 6,),
                      Text('Sign up to get started',style: TextStyle(fontSize: 20,color: Colors.white70,),)
                    ],
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                 children: [
                    TextFormField(
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.words,
                      controller: namecontroller,
                      style:const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        labelStyle:  TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade400,                          
                          ),
                          prefixIcon: const Icon(Icons.person,color: Colors.white54),
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide(
                         color: Colors.grey.shade300,
                         ),
                        ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide:BorderSide(
                         color: Colors.grey.shade400,
                         ),
                       ),
                         floatingLabelBehavior : FloatingLabelBehavior.auto,
                        ),
                        validator: (value){
                          if(value== null ||  value.trim().isEmpty){
                            return 'Enter your Name';
                          }if(value.trim().length<3){
                            return 'Full name must be at least 3 charcters';
                          }
                          return null;
                        },
                        onChanged: (value) => _userName=value,
                      ),
                      const SizedBox(height: 10,),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: usercontroller,
                        style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Email ID',
                        labelStyle:  TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade400,                          
                          ),
                            prefixIcon: const Icon(Icons.mail_outline,color: Colors.white54),
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide(
                         color: Colors.grey.shade300,
                         ),
                        ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide:BorderSide(
                         color: Colors.grey.shade400,
                         ),
                       ),
                         floatingLabelBehavior : FloatingLabelBehavior.auto,
                        ),
                        validator: (value){
                          if(value== null || value.trim().isEmpty){
                            return 'Please enter your email';
                          }
                          if (!RegExp(r'\S+@\S+\.com+').hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                           return null;
                        },
                        onChanged: (value) => _userEmail = value,
                      ),
                     const SizedBox(height: 10,),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        controller: numbercontroller,
                         style: const TextStyle(color: Colors.white),
                        obscureText: showPassword,
                      decoration: InputDecoration(
                        labelText: 'Phone number',
                         suffixIcon: IconButton(
                            icon: showPassword ? const Icon(Icons.visibility_off,color: Colors.white38,):
                            const Icon(Icons.visibility,color: Colors.black,),
                            onPressed: () {
                              setState(() {      
                                 showPassword =  !showPassword;
                                 
                                });                                                                                                                  
                            },
                          ),
                        labelStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade400,
                          
                          ),
                            prefixIcon: const Icon(Icons.key_sharp,color: Colors.white54),
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide(
                         color: Colors.grey.shade300,
                         ),
                        ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide(
                         color: Colors.grey.shade400,
                         ),
                       ),
                         floatingLabelBehavior : FloatingLabelBehavior.auto,
                        ),
                        validator: (value){
                                      if(value== null ||  value.trim().isEmpty){
                                        return 'Enter your mobile number';
                                      }if(value.trim().length!=10){
                                        return 'Please enter correct number';
                                      }
                                       if (!RegExp(r'^(?=.*?[0-9]).{10,}$').hasMatch(value)) {
                                        return 'Please enter vaild number';
                                      }
                          // if (!RegExp(r'^(?=.*?[A-Z]).{8,}$').hasMatch(value)) {
                          //   return                                   
                          //           '* At least one uppercase,\n';                                 
                                    
                          // }else
                          // if(!RegExp(r'^(?=.*?[a-z]).{8,}$').hasMatch(value)){
                          //      return 
                          //               '* At least one lowercase.\n';
                          // }else
                          // if(!RegExp(r'^(?=.*?[0-9]).{10,}$').hasMatch(value)){
                          //        return 
                          //               '* At least one number,\n';
                          // }
                          //else
                          // if(!RegExp(r'^(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value)){
                          //        return 
                          //        '* At least one special character';
                          // }
                          return null;
                        },
                        onChanged: (value) => _number = value,
                      
                      ),
                    const SizedBox(height: 22,),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      
                      child: TextButton(
                        onPressed: () async {

                          
                          },
                         style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6),),),
                        ),
                        child: Ink(decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(6),                                                 
                         color: Colors.indigo.shade500
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          
                          constraints:const BoxConstraints(
                            maxWidth: double.infinity,
                            minHeight: 40
                          ),
                          
                          child: const Text('Sign up',
                          style: TextStyle(color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                          textAlign:TextAlign.center,
                          ),
                        ),  
                        ),
                          ),
                    ),
                   Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 // ignore: sized_box_for_whitespace
                                 Container(
                                  height: 50,
                                  width: 130,                              
                                  child: const Divider(color: Colors.white54, ),
                        ),
                               ],
                             ),
                             Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: const[
                                 Padding(
                                   padding: EdgeInsets.all(21.5),
                                   child: Text('or',
                                   style: TextStyle(
                                     fontSize: 26,
                                     color: Colors.white54,
                                     fontWeight: FontWeight.w500
                                   ),),
                                 )
                               ],
                             ),
                              Column(
                               mainAxisAlignment: MainAxisAlignment.end,                               
                               children: [
                                 // ignore: sized_box_for_whitespace
                                 Container(
                                  height: 50,
                                  width: 130,                              
                                  child:const Divider(color: Colors.white54, ),
                        ),
                               ],
                             ),
                           ],
                         ),                                          
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 57,
                      width: double.infinity,
                      child: TextButton(
                        onPressed:() {                         
                                 _trySubmitForm(context);                                                                                                                                                
                          },
                         style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6),),),
                        ),
                        child: Ink(decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(6),                                                 
                          color:const Color.fromRGBO(213,76,63,1)
                        ),
                        child: Container(
                          alignment: Alignment.center,                          
                          constraints:const BoxConstraints(
                            maxWidth: double.infinity,
                            minHeight: 50
                          ),
                          
                           child: Row(                            
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/google.png',height: 40,width: 50,),                              
                               const  Text('Signup with Google',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                              ],                      
                            ),
                        ),  
                        ),
                       ),
                    ),               
                   ],                                          
                  ),
                 ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(                    
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      const  Text('Already have an account?',style: TextStyle(color:Colors.white54), ),
                       const  SizedBox(width: 8,),
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);                                                          
                          },
                          
                          child:
                           const Text('Login here',  style: TextStyle(
                             fontWeight: FontWeight.w600,
                             fontSize: 16,
                             color: Colors.white70),
                             ),
                        ) 
                      ],
                    ),
                  )
            
                ]
             ),   
    ),
    
                  ),
    );
  
  }
}