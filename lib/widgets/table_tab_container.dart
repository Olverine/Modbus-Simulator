import 'package:flutter/material.dart';
import 'package:modbus_simulator/widgets/register_table.dart';
import 'package:tab_container/tab_container.dart';

class TableTabContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: TabContainer(
        borderRadius: BorderRadius.circular(20),
        tabEdge: TabEdge.top,
        curve: Curves.easeIn,
        selectedTextStyle: const TextStyle(fontSize: 18),
        unselectedTextStyle: const TextStyle(fontSize: 16),
        tabs: _getTabs(),
        children: _getChildren(),
      ),
    );
  }

  List<Widget> _getTabs() {
    return [
      const Text("Discrete Output Coils"),
      const Text("Discrete Input Contacts"),
      const Text("Analog Input Registers"),
      const Text("Analog Output Holding Registers"),
    ];
  }

  List<Widget> _getChildren() {
    return [
      const Text("Under construction"),
      const Text("Under construction"),
      RegisterTable(),
      const Text("Under construction"),
    ];
  }
}