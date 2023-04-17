import 'dart:js_util';

import 'package:eschoolapp/controller/auth_controller.dart';
import 'package:eschoolapp/controller/register_controller.dart';
import 'package:eschoolapp/utils/color.dart';
import 'package:eschoolapp/view/auth/components/dropdown_degree.dart';
import 'package:eschoolapp/view/auth/components/dropdown_speciality.dart';
import 'package:eschoolapp/view/auth/components/dropdown_university.dart';
import 'package:eschoolapp/view/auth/login_screen.dart';
import 'package:eschoolapp/widgets/custom_button.dart';
import 'package:eschoolapp/widgets/custom_input_field.dart';
import 'package:eschoolapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RegisterScreen extends StatelessWidget {
  final String? role;
  RegisterScreen({super.key, this.role});
  RegisterController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: IconThemeData(color: primaryColor),
            ),
            body: SafeArea(
              child: Center(
                child: SingleChildScrollView(
                    padding:
                          ResponsiveWrapper.of(context).isSmallerThan("DESKTOP")
                              ? const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10)
                              : const EdgeInsets.symmetric(
                                  horizontal: 300, vertical: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                                                Padding(
                                                  padding: const EdgeInsets.symmetric( horizontal : 20.0),
                                                  child: DropDownSpec(),
                                                ),

                        SizedBox(
                          height: 20,
                        ),
                        WidgetTextField(
                            context: context,
                            hintText: "Foulen ben Foulen",
                            label: "Nom et prénom",
                            isPassword: true,
                            icon: LineIcons.user),
                        SizedBox(
                          height: 15,
                        ),
                        WidgetTextField(
                            context: context,
                            hintText: "Rue, Ville, Région",
                            label: "Adresse",
                            isPassword: true,
                            icon: LineIcons.mapAlt),
                        SizedBox(
                          height: 15,
                        ),
                        WidgetTextField(
                            context: context,
                            hintText: "1234XXXX",
                            label: "Carte CIN",
                            isPassword: true,
                            icon: LineIcons.key),
                        
                                         

                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          height: 1.5,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        WidgetTextField(
                            context: context,
                            hintText: "foulen",
                            label: "Nom d'utilisateur",
                            isPassword: true,
                            icon: LineIcons.user),
                        SizedBox(
                          height: 15,
                        ),
                        WidgetTextField(
                            context: context,
                            hintText: "XXXXX",
                            label: "Mot de passe",
                            isPassword: true,
                            icon: LineIcons.lock),
                            SizedBox(height: 20,), 
                          Container(
                            width: double.infinity,
                            //margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: CustomTextButton(
                              onPressed: () {
                              //  Get.toNamed(AppRoutes.home);
                              },
                              child: const Text(
                                "Inscription",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }

  Form _buildFormParentRegister(context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      children: [
                        Text(
                          "Comme étant parent",
                          style: TextStyle(fontSize: 22, color: Colors.black87),
                        ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text(
                          "Tu doit remplir les informations suivants",
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        child: Icon(
                          Icons.person_rounded,
                          size: 19,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Information personnel",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                CustomTextFormField(
                  controller: controller.fullNameParent,
                  hintText: 'Nom et prénom',
                  prefixIcon: Icon(Icons.person_rounded),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  controller: controller.phoneParent,
                  hintText: 'Numéro de téléphone',
                  prefixIcon: Icon(Icons.phone_rounded),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  controller: controller.emailParent,
                  hintText: 'Adresse e-mail',
                  prefixIcon: Icon(Icons.email_rounded),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        child: Icon(
                          Icons.lock_rounded,
                          size: 19,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Information d'authentification",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomTextFormField(
                  controller: controller.cinUser,
                  hintText: 'Numéro de CIN',
                  prefixIcon: Icon(Icons.numbers_rounded),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  controller: controller.passUser,
                  hintText: 'Mot de passe',
                  prefixIcon: Icon(Icons.lock_rounded),
                  isPassword: true,
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: CustomButton(
                  radius: 45,
                  height: 52,
                  color: primaryColor,
                  onPressed: () {
                    controller.parentRegister();
                  },
                  child: Text(
                    "Confirmer",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Form _buildFormStudentRegister(context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      children: [
                        Text(
                          "Comme étant étudiant",
                          style: TextStyle(fontSize: 22, color: Colors.black87),
                        ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text(
                          "Tu doit remplir les informations suivants",
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        child: Icon(
                          Icons.person_rounded,
                          size: 19,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Information personnel",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                CustomTextFormField(
                  controller: controller.fullNameStudent,
                  hintText: 'Nom et prénom',
                  prefixIcon: Icon(Icons.person_rounded),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  controller: controller.phoneStudent,
                  hintText: 'Numéro de téléphone',
                  prefixIcon: Icon(Icons.phone_rounded),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  controller: controller.emailStudent,
                  hintText: 'Adresse e-mail',
                  prefixIcon: Icon(Icons.email_rounded),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        child: Icon(
                          Icons.book,
                          size: 19,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Information d'éducation",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      DropDownDegree(),
                      SizedBox(
                        height: 10,
                      ),
                      DropDownSpec(),
                      SizedBox(
                        height: 10,
                      ),
                      DropDownUniver(),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        child: Icon(
                          Icons.lock_rounded,
                          size: 19,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Information d'authentification",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomTextFormField(
                  controller: controller.cinUser,
                  hintText: 'Numéro de CIN',
                  prefixIcon: Icon(Icons.numbers_rounded),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  controller: controller.passUser,
                  hintText: 'Mot de passe',
                  prefixIcon: Icon(Icons.lock_rounded),
                  isPassword: true,
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomButton(
                  radius: 20,
                  height: 52,
                  color: primaryColor,
                  onPressed: () {
                    controller.studentRegister();
                  },
                  child: Text(
                    "Confirmer",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
