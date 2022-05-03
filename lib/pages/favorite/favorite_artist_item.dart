import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr_clothing_flutter/gen/colors.gen.dart';

class FavoriteArtistItemWidget extends ConsumerWidget {
  final String artistName;
  final bool isEvenLine;

  const FavoriteArtistItemWidget(this.artistName, this.isEvenLine, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: IntrinsicHeight(
        child: Row(
          children: [
            const SizedBox(
              width: 40.0,
              child: Center(
                child: Icon(
                  Icons.cancel,
                  color: ColorName.peoples,
                ),
              ),
            ),
            Text(artistName),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: isEvenLine ? Colors.white : Colors.grey.shade200,
      ),
      height: 35.0,
    );
  }
}
