import 'package:firebase_core/firebase_core.dart';
import 'package:first_project/layout/news_app/cubit/cubit.dart';
import 'package:first_project/layout/news_app/news_layout.dart';
import 'package:first_project/layout/shop_app/shop_layout.dart';
import 'package:first_project/layout/social_app/cubit/cubit.dart';
import 'package:first_project/layout/social_app/social_layout.dart';
import 'package:first_project/modules/shop_app/login/shop_login.dart';
import 'package:first_project/modules/shop_app/on_boarding/on_boarding_screen.dart';
import 'package:first_project/modules/social_app/social_login/social_login_screen.dart';
import 'package:first_project/shareed/bloc_observer.dart';
import 'package:first_project/shareed/components/constants.dart';
import 'package:first_project/shareed/cubit/cubit.dart';
import 'package:first_project/shareed/cubit/states.dart';
import 'package:first_project/shareed/network/local/cache_helper.dart';
import 'package:first_project/shareed/network/remote/dio_helper.dart';
import 'package:first_project/shareed/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'layout/shop_app/cubit/cubit.dart';

void main()async
{
  WidgetsFlutterBinding.ensureInitialized();

  //await Firebase.initializeApp();

  DioHelper.init();
  await CacheHelper.init();

  bool? isDark = CacheHelper.getData(key: 'isDark');
  Widget widget;

  // bool? onBoarding = CacheHelper.getData(key: 'onBoarding');
  // String? token = CacheHelper.getData(key: 'token');
 uId= CacheHelper.getData(key: 'uId');



  // if(onBoarding!=null)
  // {
  //   if(token!=null)widget =ShopLayout();
  //   else widget = ShopLoginScreen();
  // }else
  //   {
  //     widget = OnBoardingScreen();
  //   }

if(uId !=null)
{
  widget =SocialLayout();
}else
  {
    widget = SocialLoginScreen();
  }

  BlocOverrides.runZoned(
          () {
            runApp(MyApp(
              isDark: isDark,
              startWidget: widget,
            ));
          },
    blocObserver: MyBlocObserver(),
  );


}
class MyApp extends StatelessWidget
{

  final bool? isDark;
  final Widget? startWidget;

  MyApp({
    this.isDark,
    this.startWidget,
});


  @override
  Widget build(BuildContext context) {
   return MultiBlocProvider(
          providers: [
            BlocProvider(create: (BuildContext context)=> ShopCubit()..getHomeData()..getCategories(),),
            BlocProvider(create: (context)=> NewsCubit()..getBusiness(),),
            BlocProvider(create: (BuildContext context)=> SocialCubit()..getUserData()..getPosts(),),

          ],
     child: BlocProvider(
       create: (BuildContext context)=>AppCubit() ,
       child: BlocConsumer<AppCubit,AppStates>(
         listener: (context,state){},
         builder: (context,state)
         {
           return MaterialApp(
               debugShowCheckedModeBanner: false,
               theme: lightTheme,
               darkTheme: darkTheme ,
               themeMode:AppCubit.get(context).isDark ? ThemeMode.dark :ThemeMode.light ,
               home: NewsLayout(),
           );
         },
       ),
     ),
   );
  }
}