import 'package:flutter/material.dart';
import 'package:template_ma_poche/sections/app_bar_section.dart';
import 'package:template_ma_poche/sections/balance_section.dart';
import 'package:template_ma_poche/sections/last_operations_section.dart';
import 'package:template_ma_poche/sections/total_section.dart';
import 'package:template_ma_poche/widgets/avatar_widget.dart';
import 'package:template_ma_poche/widgets/icon_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 248, 248, 248),
            elevation: 0,
            title: AppBarSection(),
            ),
            body: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Balance(),
                  TotalSection(),
                  LastOperations()
                ],
              ),
            ),
            );
  }
}
