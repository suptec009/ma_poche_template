import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:template_ma_poche/class/balance_variations.dart';

class Balance extends StatefulWidget {
  const Balance({super.key});

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  static const menuItems = <String>['Cette Semaine', 'Ce Mois', 'Cette Année'];

  final List<DropdownMenuItem<String>> _dropdownMenuItems = menuItems
      .map((String value) => DropdownMenuItem<String>(
            value: value,
            child: Text(value,
                style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w400)),
          ))
      .toList();

  String _selectedValue = 'Cette Semaine';

  double entreesPercent = 70.0;
  double sortiesPercent = 30.0;


  dynamic getStringData() {
    List<BalanceVariations> stringData = <BalanceVariations>[
      BalanceVariations("Entrées", entreesPercent, Colors.blue),
      BalanceVariations("Sorties", sortiesPercent, Colors.red)
    ];

    return stringData;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 2.0),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.27,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0), color: Colors.white),
      child: Wrap(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Balance",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            DropdownButton(
                items: _dropdownMenuItems,
                value: _selectedValue,
                onChanged: (newValue) {
                  setState(() {
                    _selectedValue = newValue!;
                  });
                })
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.30,
          child: SfCircularChart(
              margin: const EdgeInsets.all(0),
              legend: Legend(
                isVisible: true,
                alignment: ChartAlignment.center,
              ),
              series: <DoughnutSeries>[
                DoughnutSeries<BalanceVariations, String>(
                    pointColorMapper: (BalanceVariations bVar, _) => bVar.color,
                    startAngle: 270,
                    endAngle: 90,
                    dataSource: getStringData(),
                    xValueMapper: (BalanceVariations bVar, _) => bVar.type,
                    yValueMapper: (BalanceVariations bVar, _) => bVar.value,
                    strokeWidth: 10.0,
                    dataLabelMapper: (BalanceVariations bVar, _) =>
                        "${bVar.value.toInt()}%",
                    dataLabelSettings: const DataLabelSettings(
                        isVisible: true,
                        labelPosition: ChartDataLabelPosition.outside,
                        labelIntersectAction: LabelIntersectAction.none))
              ]),
        )
      ]),
    );
  }
}
