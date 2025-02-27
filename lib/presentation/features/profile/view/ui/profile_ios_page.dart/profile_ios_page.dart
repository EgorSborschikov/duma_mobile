import 'package:duma/presentation/features/profile/view/ui/profile_ios_page.dart/widgets/profile_items_ios.dart';
import 'package:duma/presentation/features/profile/view/ui/profile_ios_page.dart/widgets/profile_option_ios.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../common/components_for_ios/custom_top_navigation_bar/custom_top_navigation_bar.dart';
import '../../../../settings/view/ui/settings_ios/settings_ios_page.dart';

class ProfileIosPage extends StatelessWidget{
  const ProfileIosPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Профиль',
          style: TextStyle(
            fontFamily: 'San Francisco',
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: CupertinoColors.black
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      child: SafeArea(
        child: Center(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: ProfileItemsIos(
                  header: 'Опции', 
                  options: [
                    ProfileOptionIos(
                      title: 'Информация об учебном заведении', 
                      onTap: () {

                      }
                    ),
                    ProfileOptionIos(
                      title: 'Зачётная книжка/Дневник', 
                      onTap: () {
                        
                      }
                    ),
                    ProfileOptionIos(
                      title: 'Отчёт об успеваемости', 
                      onTap: () {
                        
                      }
                    ),
                    ProfileOptionIos(
                      title: 'Настройки', 
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => SettingsIosPage(isSwitchEnabled: true,)),
                        );
                      }
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}