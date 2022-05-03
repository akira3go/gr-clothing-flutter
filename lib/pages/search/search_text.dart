import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';


class SearchTextPage extends ConsumerWidget {
  const SearchTextPage({Key? key}) : super(key: key);

  onChanged(text) {}

  void onTapSearch() {}

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 12.0),
                        child: TextField(
                          maxLines: 1,
                          onChanged: onChanged,
                          onSubmitted: (text) => onTapSearch(),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () => {},
                      icon: const Icon(
                        Icons.search_rounded,
                        color: ColorName.gray,
                        size: 40,
                      ),
                    ),
                  ],
                ),
                flex: 1,
              ),
              const SizedBox(
                height: 10.0,
              ),
            ],
          )
        ],
      ),
      color: Colors.white,
    );
  }
}
