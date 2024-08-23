import 'package:flutter/material.dart';
import 'package:todo_app_c11_friday/core/utils/email_validation.dart';
import 'package:todo_app_c11_friday/core/utils/image_utiles.dart';
import 'package:todo_app_c11_friday/ui/widgets/customTextFomField.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isSecure = true;

  var fullNameController = TextEditingController();
  var userNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var rePasswordController = TextEditingController();
var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(getImagePathByName('background.png')))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextFormField(
                  controller: fullNameController,
                  label: 'Full Name',
                  keyboardType: TextInputType.name,
                  validator: (input) {
                    if (input == null || input
                        .trim()
                        .isEmpty) {
                      return 'Plz, enter full name';
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  controller: userNameController,
                  label: 'User Name',
                  keyboardType: TextInputType.text,
                  validator: (input) {
                    if (input == null || input
                        .trim()
                        .isEmpty) {
                      return 'Plz, enter user name';
                    }
                    if (!(input is String)) {
                      return 'Plz, enter a valid user name';
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  controller: emailController,
                  label: 'E-mail Address',
                  keyboardType: TextInputType.emailAddress,
                  validator: (input) {
                    if (input == null || input
                        .trim()
                        .isEmpty) {
                      return 'Plz, enter e-mail address';
                    }
                    if (!isValidEmail(input)) {
                      return 'email bad format';
                    }
                  },
                ),
                CustomTextFormField(
                  controller: passwordController,
                  label: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  isSecureText: isSecure,
                  suffixIcon: IconButton(
                    onPressed: () {
                      isSecure = !isSecure;
                      setState(() {});
                    },
                    icon:
                    Icon(isSecure ? Icons.visibility_off : Icons.visibility),
                  ),
                  validator: (input) {
                    if (input == null || input
                        .trim()
                        .isEmpty) {
                      return 'Plz, enter password';
                    }
                    if (input.length < 6) {
                      return 'password must be at least 6 chars';
                    }
                  },
                ),
                CustomTextFormField(
                  controller: rePasswordController,
                  validator: (input) {
                    if (input == null || input
                        .trim()
                        .isEmpty) {
                      return 'Plz, enter password confirmation';
                    }
                    if (input != passwordController.text) {
                      return 'password doesn\'t match';
                    }
                  },
                  label: 're-password',
                  keyboardType: TextInputType.visiblePassword,
                  isSecureText: true,
                ),
SizedBox(height: 12,),
                ElevatedButton(onPressed: () {
                  register();
                }, child: Text('Register'))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void register() {
    // step1 validate
    //step -> register
    bool isValidForm = formKey.currentState!.validate();
    if(!isValidForm){
      return;
    }


  }
}