import 'package:flutter/cupertino.dart';
import 'search_parameters_form.dart';
import 'ui/time_range_picker.dart';
import 'ui/value_switcher.dart';

class ScheduleSearchIosPage extends StatefulWidget {
  const ScheduleSearchIosPage({super.key});

  @override
  State<ScheduleSearchIosPage> createState() => _ScheduleSearchIosPageState();
}

class _ScheduleSearchIosPageState extends State<ScheduleSearchIosPage> {
  bool _isAdvancedOptionsEnabled = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      navigationBar: CupertinoNavigationBar(
        middle: Text('Настройки поиска расписания'),
      ),
      child: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: SearchItemsIos(
                header: 'Общая информация', 
                options: [
                  SearchParametersOption(
                    title: 'Название группы', 
                    child: Container(
                      width: 190,
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
                    title: 'Учебное заведение', 
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
                    title: 'Включить расширенный поиск', 
                    child: CupertinoSwitch(
                      value: false, 
                      onChanged: _openMoreMenuSearchSchedule,
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SearchItemsIos(
                header: 'Расширенный поиск', 
                options: [
                  SearchParametersOption(
                    title: 'Номер смены', 
                    child: ValueSwitcher()
                  ),
                  SearchParametersOption(
                    title: 'Название профиля', 
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
                    title: 'Время занятий', 
                    child: TimeRangePicker()
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                width: 200,
                height: 43,
                child: CupertinoButton(
                  padding: EdgeInsets.symmetric(),
                  color: Color(0xFF5727CE),
                  onPressed: () {

                  },
                  child: Text(
                    'Войти',
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
      if (_isAdvancedOptionsEnabled = true) {
        // Ваша логика здесь
      }
    });
  }
}
