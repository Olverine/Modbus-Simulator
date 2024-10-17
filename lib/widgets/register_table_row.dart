import 'package:flutter/material.dart';
import 'package:modbus_simulator/widgets/register_table_cell.dart';

const double _cellHeight = 48;

class RegisterTableRow extends StatelessWidget{
  int rowNumber;
  int tableOffset;

  RegisterTableRow(this.rowNumber, this.tableOffset, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _cellHeight,
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        children: _getCells(),
      ),
    );
  }
  
  List<Widget> _getCells() {
    List<Widget> cells = [];

    for(int i = 0; i < 16; i++) {
      int registerAddr = tableOffset + i +(rowNumber*16);
      cells.add(
        Expanded(
          child: SizedBox(
            height: _cellHeight,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: rowNumber % 2 == 0 ? const Color.fromARGB(255, 212, 212, 212) : const Color.fromARGB(255, 255, 255, 255),
                border: Border.all(color: Colors.grey, width: 1.0)
              ),
              child: registerAddr - tableOffset == 9999 ? Container() : RegisterTableCell(registerAddr)
            ),
          ),
        )
      );
    }

    return cells;
  }

}