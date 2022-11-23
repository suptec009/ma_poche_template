import 'package:flutter/material.dart';
import 'package:template_ma_poche/widgets/avatar_widget.dart';
import 'package:template_ma_poche/widgets/icon_button.dart';

class AppBarSection extends StatefulWidget {
  const AppBarSection({super.key});

  @override
  State<AppBarSection> createState() => _AppBarSectionState();
}

class _AppBarSectionState extends State<AppBarSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Avatar(image: "assets/bill.jpeg", color: Colors.grey),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Bill",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "Compte Standard",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                        color: Colors.blueGrey),
                  ),
                ],
              ),
            ],
          ),
          IconButtonWidget(
            icon: Icons.search,
            onPressed: () {},
            backgroundColor: Color.fromARGB(255, 16, 62, 228),
            iconColor: Colors.white,
            shape: BoxShape.circle,
          ),
        ],
      ),
    );
  }
}
