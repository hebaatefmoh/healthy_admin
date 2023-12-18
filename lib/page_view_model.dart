
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/homepage_bloc/home_pge_bloc.dart';
import 'package:myhealthyfood_admin/pageview_content.dart';
import 'package:myhealthyfood_admin/resources/assets_manager.dart';
import 'package:myhealthyfood_admin/resources/color_manager.dart';
import 'package:myhealthyfood_admin/resources/dimensions.dart';
import 'package:myhealthyfood_admin/resources/routes_manager.dart';
import 'package:myhealthyfood_admin/responsive.dart';


class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}


class _HomePageViewState extends State<HomePageView> with SingleTickerProviderStateMixin {

  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  PageController pageController = PageController(
      viewportFraction: 1, initialPage: 0);


  @override
  void initState() {
    initslidAnimation();
    navigatetohomepage();
    super.initState();
  }



  void navigatetohomepage() {
    Future.delayed(const Duration(seconds: 4), () {
      pageController.nextPage(
          duration: const Duration(seconds: 2), curve: Curves.easeInOut);

    });
  }
  void navigatetoprevious() {
    Future.delayed(const Duration(seconds: 4), () {
      pageController.previousPage(
          duration: const Duration(seconds: 2), curve: Curves.easeInOut);

    });
  }

    List<String> images = [
      ImageAssets.page2,
      ImageAssets.page3,
      ImageAssets.page4,


    ];
    List<PageViewContent> pages = [

      const PageViewContent(text: "Healthy Lunch Salad", image: ImageAssets.page2,),
      const PageViewContent(text: "Healthy Lunch Salad", image: ImageAssets.page3,),
      const PageViewContent(text: "Healthy Lunch Salad", image: ImageAssets.page4,),
      const PageViewContent(
        text: "Healthy Lunch Salad", image: ImageAssets.signupbackground,),
    ];

    @override
    Widget build(BuildContext context) {
      return    BlocProvider(
          create: (context) =>HomePgeBloc(),
        child: BlocBuilder<HomePgeBloc, HomePgeState>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () {
                 // Navigator.pushNamed(context, Routes.category);
                },
                child: AnimatedBuilder(
                    animation: slidingAnimation,
                    builder: (context, _) {
                      return SlideTransition(

                          position: slidingAnimation,
                          child:
                          Column(
                            children: [
                              Container(
                                height:Responsive.ismobile(context)? Dimensions().height(context):
                                Dimensions().height(context) ,
                                width: Dimensions().width(context),
                                decoration: const BoxDecoration(
                                  // shape: BoxShape.rectangle,
                                ),


                                child: PageView.builder(
                                    controller: pageController,
                                    allowImplicitScrolling: true,
                                    physics: const ScrollPhysics(),

                                    onPageChanged: (value) {
                                      BlocProvider.of<HomePgeBloc>(context).add(
                                          PageViewEvent(value));


                                      navigatetohomepage();
                                    },
                                    itemCount: pages.length,
                                    itemBuilder: (context, index) {
                                      return pages[index];
                                    }
                                ),
                              ),
                              Center(

                                child: DotsIndicator(

                                  onTap: (double value) {
                                    BlocProvider.of<HomePgeBloc>(context).add(
                                        PageViewEvent(value as int));
                                    navigatetohomepage();
                                  },

                                  dotsCount: pages.length,

                                  position: state.index.toDouble(),
                                  reversed: false,

                                  decorator: DotsDecorator(


                                    color: ColorManager.grey, // Inactive color

                                    activeColor: ColorManager.primary,

                                  ),

                                ),

                              ),
                            ],
                          )
                      );
                    }
                ),
              );
            }
        ),
      );
    }




  void initslidAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 200));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero).animate(
            animationController);


    animationController.forward();
  }


}
