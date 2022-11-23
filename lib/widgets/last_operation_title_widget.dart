import 'package:flutter/material.dart';

class LastOperationsTitle extends StatefulWidget {
  const LastOperationsTitle({
    Key? key,
  }) : super(key: key);

  @override
  State<LastOperationsTitle> createState() => _LastOperationsTitleState();
}

class _LastOperationsTitleState extends State<LastOperationsTitle> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.05,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Dernières Opérations",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  Text("See All",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey)),
                ],
              ));
  }
}