import 'package:flutter/material.dart';
import 'package:flutter_desktop_notes/components/main_content.dart';
import 'package:flutter_desktop_notes/layouts/main_layout.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MainLayout(
        child: MainContent(),
      );
}
