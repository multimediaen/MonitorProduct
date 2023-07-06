
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monitorproduct/widget/widget_button.dart';
import 'package:monitorproduct/widget/widget_text_button.dart';

import '../utility/app_dialog.dart';

class WidgetSignOut extends StatelessWidget {
  const WidgetSignOut({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WidgetButton(
      label: 'Sign out',
      pressFunc: () {
        AppDialog(context: context).normalDialog(
            title: 'Sign Out ?',
            firstAction: WidgetTextButton(
              label: 'Confirm',
              pressFunc: () async {

                await FirebaseAuth.instance.signOut().then((value) {
                  Get.offAllNamed('/authen');
                });




              },
            ));
      },
    );
  }
}
