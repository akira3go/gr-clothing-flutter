import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/gen/fonts.gen.dart';

class ProductDetailDataTable extends StatelessWidget {
  const ProductDetailDataTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tableWidth = MediaQuery.of(context).size.width - 40;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: DataTable(
        columnSpacing: 0,
        checkboxHorizontalMargin: 0,
        showCheckboxColumn: false,
        headingRowHeight: 35,
        headingRowColor: MaterialStateProperty.all<Color>(
          ColorName.lightGray,
        ),
        headingTextStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontFamily: FontFamily.hiragino,
        ),
        dataRowHeight: 35,
        border: TableBorder.all(color: Colors.black),
        columns: [
          DataColumn(
            label: SizedBox(
              width: (tableWidth - 120) * 0.33,
              child: const Text("サイズ", textAlign: TextAlign.center),
            ),
          ),
          const DataColumn(
            label: SizedBox(
              width: 40,
              child: Text("縦", textAlign: TextAlign.center),
            ),
          ),
          const DataColumn(
            label: SizedBox(
              width: 40,
              child: Text("横", textAlign: TextAlign.center),
            ),
          ),
          DataColumn(
            label: SizedBox(
              width: (tableWidth - 120) * 0.67,
              child: const Text("リング直径", textAlign: TextAlign.center),
            ),
          ),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(
                SizedBox(
                  width: (tableWidth - 120) * 0.33,
                  child: const Text("フリー", textAlign: TextAlign.center),
                ),
              ),
              const DataCell(
                SizedBox(
                  width: 40,
                  child: Text("2", textAlign: TextAlign.center),
                ),
              ),
              const DataCell(
                SizedBox(
                  width: 40,
                  child: Text("3", textAlign: TextAlign.center),
                ),
              ),
              DataCell(
                SizedBox(
                  width: (tableWidth - 120) * 0.67,
                  child: const Text("3.5", textAlign: TextAlign.center),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
