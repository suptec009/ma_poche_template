import 'package:flutter/material.dart';
import 'package:template_ma_poche/widgets/rounded_card_widget.dart';

class TotalSection extends StatefulWidget {
  const TotalSection({super.key});

  @override
  State<TotalSection> createState() => _TotalSectionState();
}

class _TotalSectionState extends State<TotalSection> {
  double totalEntrees = 120000;
  double totalSorties = 75000;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const RoundedCard(
                backgroundColor: Colors.blue,
                icon: Icons.arrow_downward,
                size: 24,
                widthFactor: 0.11,
              ),
              SizedBox(width: 5.0,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Total des entrées",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Text(
                    "$totalEntrees F CFA",
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.blueGrey),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              const RoundedCard(
                backgroundColor: Colors.red,
                icon: Icons.arrow_upward,
                size: 24,
                widthFactor: 0.11,
              ),
              SizedBox(width: 5.0,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Total des sorties",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Text(
                    "$totalSorties F CFA",
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.blueGrey),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
