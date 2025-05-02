
// ignore_for_file: prefer_const_constructors
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:todo_list/routes/routes_name.dart';
import 'package:todo_list/views/auth/forget_screen.dart';
import 'package:todo_list/views/auth/onboarding.dart';
import 'package:todo_list/views/auth/sign_in.dart';
import 'package:todo_list/views/auth/sign_up.dart';
import 'package:todo_list/views/auth/splash_screen.dart';
import 'package:todo_list/views/screen/add_list.dart';
import 'package:todo_list/views/screen/edit_addlist.dart';
import 'package:todo_list/views/screen/edit_profile.dart';
import 'package:todo_list/views/screen/profile_screen.dart';

class AppRoutes {
  static appRoutes() => [
    // auth routes
    GetPage(name: RouteNames.splashScreen, page: () => Splashscreen()),
    GetPage(name: RouteNames.onboardingScreen, page: () => OnboardingScreen()),
    GetPage(name: RouteNames.signin, page: () => SignInScreen()),
    GetPage(name: RouteNames.signup, page: () => SignUpScreen()),
    GetPage(
      name: RouteNames.forgotPassword,
      page: () => ForgetScreen(),
    ),
   
    GetPage(name: RouteNames.addlist, page: () =>AddListScreen ()),
    GetPage(name: RouteNames.edittasklist, page: () => EditAddlistScreen()),
    // GetPage(
    //   name: RouteNames.edittasklist,
    //   page:
    //       () => EditTaskScreen(
    //         title: 'Tittle of your Task',
    //         description:
    //             'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncove',
    //       ),
    // ),
    GetPage(name: RouteNames.profile, page: () => ProfileScreen()),
    GetPage(name: RouteNames.editProfileScreen, page: () => EditProfileScreen()),
  ];
}