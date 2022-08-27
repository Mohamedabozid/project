import 'package:first_project/shareed/components/compnnents.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget
{
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,

        ),
        title: Text(
          'صيدليه رهف',

        ),
        actions: [
          Icon(
            Icons.search,

          ),
        ],
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key:formKey ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
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
                    label: 'email',
                    prefix: Icons.email,
                    type: TextInputType.emailAddress,
                    validate: (String? value)
                    {
                      if(value!.isEmpty)
                      {
                       return'email must not be empty';

                      }
                      return null;

                    }

                  ),
                  SizedBox(
                    height: 20.0,
                  ),
              defaultFormField(
                  controller: passwordController,
                  label: 'password',
                  prefix: Icons.lock,
                  isPass: true,

                  type: TextInputType.visiblePassword,
                  validate: (String? value)
                  {
                    if(value!.isEmpty)
                    {
                      return'password must not be empty';

                    }
                    return null;

                  }

              ),

                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    text: 'login',
                    background: Colors.blue,
                    function: ()
                    {
                      if(formKey.currentState!.validate()){
                        print(emailController.text);
                        print(passwordController.text);

                      }

                    },
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dont\'t have an accuont ?',
                      ),
                      TextButton(onPressed: (){},
                        child: Text(
                        'Register Now',
                      ),)

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
