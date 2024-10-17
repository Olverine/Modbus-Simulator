import 'package:flutter/widgets.dart';
import 'package:flutter_spreadsheet_ui/flutter_spreadsheet_ui.dart';

class RegisterTable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterTableState();
}

class _RegisterTableState extends State<RegisterTable> {

  @override
  Widget build(BuildContext context) {
    return FlutterSpreadsheetUI(
      config: const FlutterSpreadsheetUIConfig(
        enableColumnWidthDrag: true,
        enableRowHeightDrag: true,
        firstColumnWidth: 150,
        freezeFirstColumn: true,
        freezeFirstRow: true,
      ),
      columnWidthResizeCallback: (int columnIndex, double updatedWidth) {
        print("Column: $columnIndex's updated width: $updatedWidth");
      },
      rowHeightResizeCallback: (int rowIndex, double updatedHeight) {
        print("Row: $rowIndex's updated height: $updatedHeight");
      },
      columns: [
        // FlutterSpreadsheetUIColumn(
        //   contentAlignment: Alignment.center,
        //   cellBuilder: (context, cellId) => const Text("Task"),
        // ),
        // FlutterSpreadsheetUIColumn(
        //   width: 200,
        //   contentAlignment: Alignment.center,
        //   cellBuilder: (context, cellId) => const Text("Assigned Date"),
        // ),
        // FlutterSpreadsheetUIColumn(
        //   width: 110,
        //   cellBuilder: (context, cellId) => const Text("Permissions"),
        // ),
        ...List.generate(
          10,
          (index) => FlutterSpreadsheetUIColumn(
            width: 110,
            cellBuilder: (context, cellId) => Text(cellId),
          ),
        ),
      ],
      rows: List.generate(
        20,
        (rowIndex) => FlutterSpreadsheetUIRow(
          cells: [
            // FlutterSpreadsheetUICell(
            //   cellBuilder: (context, cellId) =>
            //       Text('Task ${rowIndex + 1}'),
            // ),
            // FlutterSpreadsheetUICell(
            //   cellBuilder: (context, cellId) => Text(
            //     DateTime.now().toString(),
            //   ),
            // ),
            // FlutterSpreadsheetUICell(
            //   cellBuilder: (context, cellId) => const Text(
            //     'None',
            //   ),
            // ),
            ...List.generate(
              10,
              (colIndex) => FlutterSpreadsheetUICell(
                cellBuilder: (context, cellId) => Text(
                  cellId,
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }

}