import 'package:ecommerce/components/custom_suffix_icon.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidht(20)),
        child: Column(
          children: [
            Text(
              "Complete Profile",
              style: headingStyle,
            ),
            Text(
              "Complete your details or continue \nwith your social media",
              textAlign: TextAlign.center,
            ),
            CompleteProfileForm()
          ],
        ),
      ),
    );
  }
}

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

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
      key: _formKey,
      child: Column(
        children: [
          BuildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => firstName = newValue,
            decoration: InputDecoration(
              labelText: "Last Name",
              hintText: "Enter Your Last Name",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(
                svgIcon: "assets/icons/User.svg",
              ),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => firstName = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kNamelNullError);
              } 
              return null;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kNamelNullError);
                return "";
              } 
              return null;
            },
            decoration: InputDecoration(
              labelText: "First Name",
              hintText: "Enter Your First Name",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(
                svgIcon: "assets/icons/User.svg",
              ),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => firstName = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kNamelNullError);
              } 
              return null;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kNamelNullError);
                return "";
              } 
              return null;
            },
            decoration: InputDecoration(
              labelText: "First Name",
              hintText: "Enter Your First Name",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(
                svgIcon: "assets/icons/User.svg",
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextFormField BuildFirstNameFormField() {
    return TextFormField(
          keyboardType: TextInputType.emailAddress,
          onSaved: (newValue) => firstName = newValue,
          onChanged: (value) {
            if (value.isNotEmpty) {
              removeError(error: kNamelNullError);
            } 
            return null;
          },
          validator: (value) {
            if (value!.isEmpty) {
              addError(error: kNamelNullError);
              return "";
            } 
            return null;
          },
          decoration: InputDecoration(
            labelText: "First Name",
            hintText: "Enter Your First Name",
            // If  you are using latest version of flutter then lable text and hint text shown like this
            // if you r using flutter less then 1.20.* then maybe this is not working properly
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(
              svgIcon: "assets/icons/User.svg",
            ),
          ),
        );
  }
}
