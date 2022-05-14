import 'package:flutter/material.dart';
import 'package:gr_clothing_flutter/model/news/clothing_product.dart';
import 'package:gr_clothing_flutter/pages/product_detail/product_detail_view_model.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';

class ProductDetailOrderList extends StatelessWidget {
  const ProductDetailOrderList({
    Key? key,
    required this.stockList,
  }) : super(key: key);

  final List<Stock> stockList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: ColorName.lightGray)),
            ),
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: const [
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      "サイズ(フリー)",
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  flex: 7,
                ),
                SizedBox(
                  width: 70,
                  child: Text(
                    "在庫",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                  ),
                ),
                Expanded(
                  child: Text(
                    "ご注文",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                  ),
                  flex: 9,
                ),
              ],
            ),
          ),
          Column(
            children: stockList.map((e) => _orderRow(e)).toList(),
          ),
        ],
      ),
    );
  }

  Widget _orderRow(Stock stock) {
    final orderWidget = stock.canPurchase
        ? MaterialButton(
            color: ColorName.deepRed,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            padding: EdgeInsets.zero,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(width: 5),
                Text("カートに追加", style: TextStyle(color: Colors.white)),
              ],
            ),
          )
        : const Text("完売中", textAlign: TextAlign.center);
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: ColorName.lightGray)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 5),
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(stock.size.label, textAlign: TextAlign.center),
            flex: 7,
          ),
          SizedBox(
            width: 70,
            child: Text(
              stock.canPurchase ? "○" : "×",
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(flex: 9, child: orderWidget),
        ],
      ),
    );
  }
}
