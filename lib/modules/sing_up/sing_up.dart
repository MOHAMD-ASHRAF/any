import 'package:car_care/modules/login/login_screen.dart';
import 'package:car_care/shared/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingUpScreen extends StatefulWidget {


  @override
  _SingUpScreenState createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    var cityController = TextEditingController();
    var passwordController =TextEditingController();
    return Stack(
      children: [
        backGround(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                    child: Text('Create',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: Text('Account',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 130,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        defaultText(text:'name'),
                        SizedBox(height: 5,),
                        defaultField(
                          emailController: nameController,
                          width: double.infinity,
                          typeOfInput: TextInputType.name,
                          preFix: Icons.person,
                        ),
                        SizedBox(height:10),
                        defaultText(text:'email'),
                        SizedBox(height: 5,),
                        defaultField(
                          emailController:  emailController,
                          width: double.infinity,
                          typeOfInput: TextInputType.emailAddress,
                          preFix: Icons.email,
                        ),
                        SizedBox(height:10),
                        defaultText(text:'Phone Number'),
                        SizedBox(height: 5,),
                        defaultField(
                          emailController: phoneController,
                          width: double.infinity,
                          typeOfInput: TextInputType.number,
                          preFix: Icons.phone,
                        ),
                        SizedBox(height: 10,),
                        defaultText(text:'City/Town'),
                        SizedBox(height: 5,),
                        defaultField(
                          emailController: cityController,
                          width: double.infinity,
                          typeOfInput: TextInputType.text,
                          preFix: Icons.account_balance_outlined,
                         ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               defaultText(text:'Password'),
                               SizedBox(height: 5,),
                               defaultField(
                                 isPassword: true,
                                 emailController: passwordController,
                                 width: 150,
                                 typeOfInput: TextInputType.number,
                                 preFix: Icons.lock,
                               ),
                             ],
                           ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                defaultText(text:'Confirm Password'),
                                SizedBox(height: 5,),
                                defaultField(
                                  isPassword: true,
                                  emailController: passwordController,
                                  width: 150,
                                  typeOfInput: TextInputType.number,
                                  preFix: Icons.lock,
                                ),
                              ],
                            ),
                          ],
                        ),
                        defaultText(text:'Account Type'),
                        SizedBox(height: 5,),
                        Center(
                          child: defaultButton(
                            width: 150,
                            color: Colors.red,
                            colorText: Colors.white,
                            text: 'Sin up',
                          ),
                        ),
                        Divider(
                          height: 20,
                          thickness: 3,
                          color: Colors.grey,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Text('Already have an account ?' ,style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                                onPressed: (){
                                  navigateTo(context, LoginScreen());
                                },
                              child:Text('Sing UP', style: TextStyle(color: Colors.black),))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Widget backGround()=>Container(
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/3.png'),
      fit: BoxFit.cover,
    ),
  ),
);
