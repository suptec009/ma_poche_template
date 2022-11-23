import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:template_ma_poche/class/operation.dart';
import 'package:template_ma_poche/widgets/last_operation_title_widget.dart';
import 'package:template_ma_poche/widgets/rounded_card_widget.dart';

class LastOperations extends StatefulWidget {
  const LastOperations({super.key});

  @override
  State<LastOperations> createState() => _LastOperationsState();
}

class _LastOperationsState extends State<LastOperations> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: LastOperationsTitle(),
          ),
          Expanded(
              child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTileWidget(
                    title: "CEET",
                    date: "22 Novembre",
                    amount: 25000,
                    type: OpType("SORTIE"),
                  ),
                  const Divider(height: 0, endIndent: 30, indent: 30,),
                  ListTileWidget(
                    title: "Landing page dev",
                    date: "23 Novembre",
                    amount: 50000,
                    type: OpType("ENTREE"),
                  ),
                  const Divider(height: 0, endIndent: 30, indent: 30,),
                   ListTileWidget(
                    title: "CEET",
                    date: "22 Novembre",
                    amount: 25000,
                    type: OpType("SORTIE"),
                  ),
                  const Divider(height: 0, endIndent: 30, indent: 30,),
                   ListTileWidget(
                    title: "CEET",
                    date: "22 Novembre",
                    amount: 25000,
                    type: OpType("SORTIE"),
                  ),
                  const Divider(height: 0, endIndent: 30, indent: 30,),
                  ListTileWidget(
                    title: "Landing page dev",
                    date: "23 Novembre",
                    amount: 50000,
                    type: OpType("ENTREE"),
                  ),
                  const Divider(height: 0, endIndent: 30, indent: 30,),
                   ListTileWidget(
                    title: "CEET",
                    date: "22 Novembre",
                    amount: 25000,
                    type: OpType("SORTIE"),
                  ),
                  const Divider(height: 0, endIndent: 30, indent: 30,),
                  
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

class ListTileWidget extends StatefulWidget {

  final String title;
  final String date;
  final double amount;
  final OpType type;

  const ListTileWidget({
    Key? key,
    required this.title,
    required this.date,
    required this.amount,
    required this.type,
  }) : super(key: key);

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: RoundedCard(
        backgroundColor: widget.type.value == "SORTIE" ? Color.fromARGB(163, 244, 67, 54) : Color.fromARGB(193, 33, 149, 243),
        icon: widget.type.value == "SORTIE" ? Icons.arrow_upward : Icons.arrow_downward,
        size: 18,
        widthFactor: 0.09,
      ),
      title: Text(
        widget.title,
        style:
            const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        widget.date,
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w300,
        ),
      ),
      trailing: Text(
        "${widget.amount.toInt()} F CFA",
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: widget.type.value == "SORTIE" ? Colors.red : Colors.blue),
      ),
    );
  }
}
