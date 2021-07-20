import 'package:bmi_flutter_app/shared/components/components.dart';
import 'package:flutter/material.dart';



class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
 final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login ayham',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultFormField(
                      controller: emailController,
                      type: TextInputType.emailAddress,
                      label: 'email',
                      prefixIcon: Icons.email,
                    validate:  ( String? value) {
                        if(value == null || value.trim().length == 0){
                          return 'email is not find';
                        }
                        return null;
                    }
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  defaultFormField(
                    controller: passwordController,
                      type: TextInputType.visiblePassword,
                      label: 'password',
                      prefixIcon: Icons.lock,
                      validate:   (String value) {
                        if (value.isEmpty) {
                          return 'Enter a valid password!';
                        }
                        return null;
                      },
                    suffix: Icons.remove_red_eye,
                    isPassword:true,

                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(radius: 7,
                 text: "login",
                        function: (){
                if(_formKey.currentState!.validate()){
                  print(emailController.text);
                  print(passwordController.text);
                }

                        },
                    background: Colors.red,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register Now',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}