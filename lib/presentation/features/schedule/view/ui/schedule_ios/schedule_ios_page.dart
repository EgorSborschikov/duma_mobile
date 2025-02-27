import 'package:duma/presentation/common/components_for_ios/custom_top_navigation_bar/custom_top_navigation_bar.dart';
import 'package:duma/presentation/features/search/view/ui/search_ios/schedule_search_ios_page.dart';
import 'package:flutter/cupertino.dart';

class ScheduleIosPage extends StatelessWidget{
  const ScheduleIosPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Расписание',
          style: TextStyle(
            fontFamily: 'San Francisco',
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: CupertinoColors.black
          ),
        ),
        automaticallyImplyLeading: false
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                LayoutBuilder(
                  builder: (context, constraints) {
                    return SizedBox(
                      width: constraints.maxWidth,
                      height: 43,
                      child: CupertinoButton(
                        padding: EdgeInsets.symmetric(),
                        color: CupertinoColors.opaqueSeparator,
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(builder: (context) => ScheduleSearchIosPage()),
                          );
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.search,
                              color: CupertinoColors.systemGrey6,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Поиск расписания',
                              style: TextStyle(
                                fontSize: 16,
                                color: CupertinoColors.systemGrey6,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}