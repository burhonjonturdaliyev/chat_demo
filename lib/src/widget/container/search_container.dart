import 'package:chat_demo/src/data/libruary/package_libruary.dart';
import 'package:flutter/cupertino.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.06,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      padding: EdgeInsets.only(left: 8, right: 8, bottom: 2),
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              CupertinoIcons.search,
              color: theme.colorScheme.error,
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child: TextFormField(
              maxLines: 1,
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: ConstValues.search,
                hintStyle: TextStyle(
                  color: theme.colorScheme.error,
                  fontSize: 16,
                  fontFamily: "Gilroy",
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
