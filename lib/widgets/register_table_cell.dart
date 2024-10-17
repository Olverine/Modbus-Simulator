import 'package:flutter/material.dart';
import 'package:modbus_simulator/mbus_tables.dart';

class RegisterTableCell extends StatefulWidget {

  int registerAddr;

  RegisterTableCell(this.registerAddr, {super.key});

  @override
  State<StatefulWidget> createState() => _RegisterTableState();

}

class _RegisterTableState extends State<RegisterTableCell> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text = analogInputRegisters[widget.registerAddr - 40001].toRadixString(16).padLeft(4, "0");
    return Center(
      child: Column(children: [
        Text("${widget.registerAddr}", style: const TextStyle(fontSize: 12, color: Colors.grey)),
        TextField(
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18),
          decoration: null,
          controller: controller,
          onChanged:(value) {
            analogInputRegisters[widget.registerAddr - 40001] = int.parse(value, radix: 16);
          },
        )
      ])
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

}