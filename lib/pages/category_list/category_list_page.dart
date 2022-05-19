import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';
import 'package:gr_clothing_flutter/pages/category_list/category_list_page_view_model.dart';

class CategoryListPage extends ConsumerWidget {
  const CategoryListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const itemHeight = 48;
    final itemWidth = (MediaQuery.of(context).size.width - 20) / 2;
    final state = ref.watch(categoryListPageViewModelProvider);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text("カテゴリー一覧", style: TextStyle(fontSize: 21)),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                childAspectRatio: itemWidth / itemHeight,
              ),
              itemCount: state.length,
              itemBuilder: (context, index) {
                final item = state[index];
                return Container(
                  height: 47,
                  padding: const EdgeInsets.only(left: 8, right: 4),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorName.borderGray),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          item.category,
                          maxLines: 2,
                          style: const TextStyle(
                            height: 0.9,
                            overflow: TextOverflow.ellipsis,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                      Container(
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: ColorName.lightBlue,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        alignment: Alignment.center,
                        child: Text(
                          item.productsCount.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
