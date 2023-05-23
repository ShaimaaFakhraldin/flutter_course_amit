import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_step_one/animation_ex/anim_opacity.dart';
import 'package:flutter_step_one/animation_ex/animation_container.dart';
import 'package:flutter_step_one/animation_ex/change_color_size.dart';
import 'package:flutter_step_one/animation_ex/simple_animation.dart';
import 'package:flutter_step_one/animation_ex/users/hero_example.dart';
import 'package:flutter_step_one/local_data/sqil_qureries/ex1/sql_database.dart';
import 'package:flutter_step_one/navigation_ex/page_one.dart';
import 'package:flutter_step_one/navigation_ex/product.dart';
import 'package:flutter_step_one/widgets/flutter_buttons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'drower_example/drower_example.dart';
import 'local_data/load_file_from_asstes/azkar_view.dart';
import 'local_data/shard_perefranc_example/add_user_page.dart';
import 'local_data/sqil_qureries/ex1/sqil_home.dart';
import 'local_data/sqil_qureries/ex2/screens/users_list.dart';
import 'navigation_ex/back_example.dart';
import 'navigation_ex/cart_page.dart';
import 'navigation_ex/main_page.dart';
import 'navigation_ex/page_two.dart';
import 'widgets/gridview_example.dart';


final sqlDatabase = SqlDatabase();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  await sqlDatabase.createDatabase();

  SharedPreferences per =await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      locale: Locale('en'),
      debugShowCheckedModeBanner: false,
      supportedLocales: const [Locale('en'), Locale('ar')],
      // home:  AnimatedSplashScreen(
      //     duration: 3000,
      //     splash: Icons.home,
      //     nextScreen: HeroExample(),
      //     splashTransition: SplashTransition.fadeTransition,
      //     backgroundColor: Colors.blue),
      initialRoute: "ListUsers",
      routes: {
        "ListUsers": (BuildContext con) {
          return ListUsers();
        },     "SqlitHome": (BuildContext con) {
          return SqlitHome();
        },
        "AddUserForm": (BuildContext con) {
          return AddUserForm();
        },
        "HeroExample": (BuildContext con) {
          return HeroExample();
        },

        "ChangeColorAndSize": (BuildContext con) {
          return ChangeColorAndSize();
        },

        "AnimationOpasty": (BuildContext con) {
          return AnimationOpasty();
        },

        "AinmationContainerEx": (BuildContext con) {
          return AinmationContainerEx();
        },
        "SimpleAnimation": (BuildContext con) {
          return SimpleAnimation();
        },
        // "/": (BuildContext con) {
        //   return MainPage();
        // },
        "PageOne": (BuildContext con) {
          return PageOne();
        },
        "PageTwo": (BuildContext con) {
          return PageTwo();
        },
        "CartPage": (BuildContext con) {
          return CartPage();
        },
        "BackExample": (BuildContext con) {
          return BackExample();
        },
        "DrowerExample": (BuildContext con) {
          return DrowerExample();
        },
      },
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == "ProductDetails") {
          final value = settings.arguments as int;
          return MaterialPageRoute(builder: (BuildContext con) {
            return ProductDetails(
              productId: value,
            );
          });
        }
      },
    );
  }
}
