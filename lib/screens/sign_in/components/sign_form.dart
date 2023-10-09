import 'package:ecommerce/components/custom_suffix_icon.dart';
import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/components/form_error.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce/screens/login_succes/login_succsess_screen.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class SignForm extends StatefulWidget { //deklarasi kelas SignForm
  const SignForm({super.key}); //konstruktor dari kelas SignForm

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formkey = GlobalKey<FormState>();
  String? email;//digunakan untuk menyimpan nilai inputan pengguna untuk email.
  String? password;//digunakan untuk menyimpan nilai inputan pengguna untuk password.
  bool? remember = false; //Variabel ini digunakan untuk menyimpan nilai inputan pengguna
  final List<String> errors = [];

  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenWidht(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenWidht(20)),
          Row(
            children: [
              Checkbox( //membuat kotak centang yang memungkinkan pengguna untuk mengaktifkan atau menonaktifkan opsi "Remember Me".
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Remember Me"), // digunakan di sebelah kotak centang (checkbox) yang memungkinkan pengguna untuk mengingat login mereka
              Spacer(), // spacer digunakan untuk memberikan jarak antara teks "Remember Me" dan teks "Forgot Password"
              GestureDetector( //mendeteksi ketika pengguna mengetuk teks "Forgot Password
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),//teks "Forgot Password" yang memiliki efek garis bawah (underline) dan akan mengarahkan pengguna ke layar yang sesuai ketika mereka mengetuknya
                ),
              )
            ],
          ),
          FormError(errors: errors), //widget kustom yang digunakan untuk menampilkan pesan kesalahan jika ada kesalahan validasi pada formulir. 
          SizedBox(height: getProportionateScreenWidht(20)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formkey.currentState!.validate()) {
                _formkey.currentState!.save();
                //if all are valid then go to success screen
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter Your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter Your Email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }
}
