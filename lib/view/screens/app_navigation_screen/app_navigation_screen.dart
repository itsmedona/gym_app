import 'package:flutter/material.dart';
import 'package:gym_app_sample/utils/size_utils.dart';
import 'package:gym_app_sample/view/routes/app_routes.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: SizedBox(
        width: 375.h,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0XFFFFFFFF),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Text(
                      "App Navigation",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0XFF000000),
                        fontSize: 20.fSize,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "Check your app's UI from the below demo screens of your app",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0XFF88888888),
                          fontSize: 16.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Divider(
                    height: 1.h,
                    thickness: 1.h,
                    color: Color(0XFF00000000),
                  )
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0XFFFFFFFF),
                ),
                child: Column(
                  children: [
                    buildScreenTitle(context,
                        screenTitle: "Onboarding Screen",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.onboardingScreen)),
                    buildScreenTitle(
                      context,
                      screenTitle: "Home",
                      onTapScreenTitle: () =>
                          onTapScreenTitle(context, AppRoutes.homeScreen),
                    ),
                    buildScreenTitle(context,
                        screenTitle: "Explore",
                        onTapScreenTitle: () =>
                            onTapScreenTitle(context, AppRoutes.exploreScreen)),
                    buildScreenTitle(context,
                        screenTitle: "Activity",
                        onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.activityScreen)),
                    buildScreenTitle(context,
                        screenTitle: "Workout",
                        onTapScreenTitle: () =>
                            onTapScreenTitle(context, AppRoutes.workoutScreen))
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    ));
  }

  //Common Widget
  Widget buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0XFF00000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 5.h),
            Divider(
              height: 1.h,
              thickness: 1.h,
              color: Color(0XFF88888888),
            )
          ],
        ),
      ),
    );
  }

  //common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
