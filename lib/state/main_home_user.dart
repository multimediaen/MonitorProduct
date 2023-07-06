import 'package:flutter/material.dart';
import 'package:monitorproduct/utility/app_dialog.dart';
import 'package:monitorproduct/widget/widget_button.dart';
import 'package:monitorproduct/widget/widget_text.dart';
import 'package:monitorproduct/widget/widget_text_button.dart';

import '../widget/widget_signout.dart';

class MainHomeUser extends StatelessWidget {
  const MainHomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WidgetText(data: 'User'),
      ),
      floatingActionButton: WidgetSignOut(),
    );
  }
}
