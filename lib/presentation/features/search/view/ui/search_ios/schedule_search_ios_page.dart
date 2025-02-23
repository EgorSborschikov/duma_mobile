import 'package:duma/presentation/common/components_for_ios/custom_top_navigation_bar/custom_top_navigation_bar.dart';
import 'package:duma/presentation/features/search/view/ui/search_ios/search_parameters_form.dart';
import 'package:duma/presentation/features/search/view/ui/search_ios/ui/time_range_picker.dart';
import 'package:duma/presentation/features/search/view/ui/search_ios/ui/value_switcher.dart';
import 'package:flutter/cupertino.dart';

class ScheduleSearchIosPage extends StatefulWidget{
  const ScheduleSearchIosPage({super.key});

  @override
  State<ScheduleSearchIosPage> createState() => _ScheduleSearchIosPageState();
}

class _ScheduleSearchIosPageState extends State<ScheduleSearchIosPage> {
  int selectedNumber = 1;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      navigationBar: CustomTopNavigationBar(
        title: 'Настройки поиска расписания'
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Укажите параметры, по которым необходимо проводить поиск',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: CupertinoColors.black,
                    decoration: TextDecoration.none
                  ),
                ),
                const SizedBox(height: 10),
                SearchItemsIos(
                  header: 'Информация о занятиях', 
                  options: [
                    SearchParametersOption(
                      title: 'Номер смены', 
                      child: ValueSwitcher()
                    ),
                    SearchParametersOption(
                      title: 'Время занятия', 
                      child: TimeRangePicker()
                    ),
                  ],
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}