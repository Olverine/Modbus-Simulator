import 'package:flutter/widgets.dart';
import 'package:modbus_simulator/widgets/register_table_row.dart';

class RegisterTable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterTableState();
}

class _RegisterTableState extends State<RegisterTable> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(itemCount: 625, itemBuilder: (context, index) {
        return RegisterTableRow(index, 40001);
      }),
    );
  }
}