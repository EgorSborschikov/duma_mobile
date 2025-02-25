import 'package:flutter/cupertino.dart';
import '../../../../../common/components_for_ios/custom_top_navigation_bar/custom_top_navigation_bar.dart';
import 'search_parameters_form.dart';
import 'ui/time_range_picker.dart';
import 'ui/value_switcher_ios.dart';

class ScheduleSearchIosPage extends StatefulWidget {
  const ScheduleSearchIosPage({super.key});

  @override
  State<ScheduleSearchIosPage> createState() => _ScheduleSearchIosPageState();
}

class _ScheduleSearchIosPageState extends State<ScheduleSearchIosPage> {
  bool _isAdvancedOptionsEnabled = false;
  final TextStyle _textStyle = TextStyle(
    fontFamily: 'San Francisco',
    fontWeight: FontWeight.normal,
    fontSize: 14,
    color: CupertinoColors.inactiveGray,
  );

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      navigationBar: CustomTopNavigationBar(
        title: 'Настройки поиска расписания', 
        onTap: () { 

        },
      ),
      child: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: SearchItemsIos(
                header: 'Общая информация', 
                options: [
                  SearchParametersOption(
                    title: Text(
                      'Название группы',
                      style: _textStyle,
                    ), 
                    child: Container(
                      width: 180,
                      height: 50,
                      decoration: BoxDecoration(
                        color: CupertinoColors.systemGrey6,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: CupertinoTextField(
                        placeholder: 'Группа',
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: const BoxDecoration(),
                      ),
                    ),
                  ),
                  SearchParametersOption(
                    title: Text(
                      'Учебное заведение', 
                      style: _textStyle
                    ), 
                    child: Container(
                      width: 180,
                      height: 50,
                      decoration: BoxDecoration(
                        color: CupertinoColors.systemGrey6,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: CupertinoTextField(
                        placeholder: 'Уч. заведение',
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: const BoxDecoration(),
                      ),
                    ),
                  ),
                  SearchParametersOption(
                    title: Text(
                      _isAdvancedOptionsEnabled ? 'Выключить расширенный поиск' : 'Включить расширенный поиск',
                      style: _textStyle,
                    ),
                    child: CupertinoSwitch(
                      value: _isAdvancedOptionsEnabled,
                      onChanged: _openMoreMenuSearchSchedule,
                    ),
                  ),
                ],
              ),
            ),
            if(_isAdvancedOptionsEnabled) 
              SliverToBoxAdapter(
              child: SearchItemsIos(
                header: 'Расширенный поиск', 
                options: [
                  SearchParametersOption(
                    title: Text(
                      'Номер смены',
                      style: _textStyle,
                    ), 
                    child: ValueSwitcherIos()
                  ),
                  SearchParametersOption(
                    title: Text(
                      'Название профиля', 
                      style: _textStyle
                    ), 
                    child: Container(
                      width: 180,
                      height: 50,
                      decoration: BoxDecoration(
                        color: CupertinoColors.systemGrey6,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: CupertinoTextField(
                        placeholder: 'Профиль',
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: const BoxDecoration(),
                      ),
                    ),
                  ),
                  SearchParametersOption(
                    title: Text(
                      'Время занятий',
                      style: _textStyle,
                    ), 
                    child: TimeRangePicker()
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                width: 150,
                height: 43,
                child: CupertinoButton(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  color: Color(0xFF5727CE),
                  onPressed: () {

                  },
                  child: Text(
                    'Найти',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: CupertinoColors.white,           
                    ),
                  ),
                ),
              ),             
            ),
          ],
        ),
      ),
    );
  }
  void _openMoreMenuSearchSchedule(bool value) {
    setState(() {
      _isAdvancedOptionsEnabled = value;
    });
  }
}
