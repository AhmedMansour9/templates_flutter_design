import 'package:fluro/fluro.dart';
import 'package:webview_flutter/utill/routes.dart';
import 'package:webview_flutter/view/bottombar/convex/convex_bottombar.dart';
import 'package:webview_flutter/view/home/home_screen.dart';
import 'package:webview_flutter/view/not_found.dart';
import 'package:webview_flutter/view/sidemenu/inner/Inner_drawer.dart';
import 'package:webview_flutter/view/sidemenu/shrink/shrink_drawer.dart';
import 'package:webview_flutter/view/sidemenu/slider/slider_drawer.dart';
import '../view/bottombar/animation/animated/animated_bottombar.dart';
import '../view/bottombar/curved/curved_bottombar.dart';
import '../view/bottombar/custom/custom_bottombar.dart';
import '../view/bottombar/expandable/expandable_bottombar.dart';
import '../view/bottombar/google/google_bottombar.dart';
import '../view/bottombar/navy/navy_bottombar.dart';
import '../view/bottombar/persistent/persistent_bottombar.dart';
import '../view/bottombar/salomon/salomon_bottombar.dart';
import '../view/bottombar/snake/snake_bottombar.dart';
import '../view/sidemenu/adaptive/custom_adaptive.dart';
import '../view/sidemenu/admin/admin_drawer.dart';
import '../view/sidemenu/advanced/advance_drawer.dart';
import '../view/sidemenu/animation/animated_rail.dart';
import '../view/sidemenu/animation/animated_stack_drawer.dart';
import '../view/sidemenu/animation/animation2_drawer.dart';
import '../view/sidemenu/animation/animation_drawer.dart';
import '../view/sidemenu/curved/curved_drawer.dart';
import '../view/sidemenu/easy/easy_drawer.dart';
import '../view/sidemenu/elastic/elastic_drawer.dart';
import '../view/sidemenu/fancy/fancy_drawer.dart';
import '../view/sidemenu/flurry/flurry_drawer.dart';
import '../view/sidemenu/folding/folding_drawer.dart';
import '../view/sidemenu/hidden/hidden_drawer.dart';
import '../view/sidemenu/kf/kf_drawer.dart';
import '../view/sidemenu/menu/menu_drawer.dart';
import '../view/sidemenu/multilevel/multilevel_drawer.dart';
import '../view/sidemenu/sidebarx/sidebarx_drawer.dart';
import '../view/sidemenu/sidemenu2/sidemenu_drawer.dart';
import '../view/sidemenu/slidable/slidable_drawer.dart';
import '../view/sidemenu/slide/slide_drawer.dart';
import '../view/splash/splash_screen.dart';



class RouterHelper {
  static final FluroRouter router = FluroRouter();

  static final Handler _splashHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) => SplashScreen());
  static final Handler _homeHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) => const HomeScreen());
  static final Handler _sidebarXHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) => SideBarX());
  static final Handler _innerDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) => const InnerDrawer());
  static final Handler _sliderMenuDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) => const SliderMenuDrawer());
  static final Handler _shrinkDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) => const ShrinkDrawer());
  static final Handler _hiddenDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  HiddenDrawer());
  static final Handler _addvancedDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  AddvancedDrawer());
  static final Handler _animatedStackDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  AnimatedStackDrawer());
  static final Handler _easyDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  EasyDrawer());
  static final Handler _elasticDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  ElastiicDrawer());
  static final Handler _kfDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  KFFDrawer());
  static final Handler _adminDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  AdminDrawer());
  static final Handler _adaptiveDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  AdaptiveDrawer());
  static final Handler _animationDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  AnimationDrawer());
  static final Handler _animation2DrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  Animation2Drawer());
  static final Handler _multiLevelDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  MultiiLevelDrawer());
  static final Handler _curvedDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  CurveedDrawer());
  static final Handler _fancyDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  FancyDrawer());
  static final Handler _slideDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  SlideeDrawer());
  static final Handler _railDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  AnimatedRailDrawer());
  static final Handler _slidableDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  SlidableDrawer());
  static final Handler _menuDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  MenuDrawer());
  static final Handler _flurryDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  FlurryDrawer());
  static final Handler _foldingDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  FoldingDrawer());
  static final Handler _sideMenuDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  SideMenuDrawer());
  static final Handler _convexBarDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  ConvexBottomBar());
  static final Handler _persistentBarDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  PersistentBottomBar());
  static final Handler _curvedBarDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  CurvedBottomBar());
  static final Handler _navyBarDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  NavyBottomBar());
  static final Handler _salmonyBarDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  SalomnBottomBar());
  static final Handler _snackBarDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  SnakeBottomBar());
  static final Handler _googleBarDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  GoogleBottomBar());
  static final Handler _animatedBarDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  AnimatedBottomBar());
  static final Handler _expandableBarDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  ExpandableBottomBar());
  static final Handler _customBarDrawerHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) =>  CutomBottomBar());
  static final Handler _emptyPageHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) => EmptyPage());


  static void initRouter() {
    router.notFoundHandler = _emptyPageHandler;
    router.define(Routes.SPLASH_SCREEN, handler: _splashHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.HOME_SCREEN, handler: _homeHandler, transitionType: TransitionType.fadeIn);

    // Side Menu
    router.define(Routes.SIDEBARX_SCREEN, handler: _sidebarXHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.INNER_SCREEN, handler: _innerDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.SLIDER_SCREEN, handler: _sliderMenuDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.SHRINK_SCREEN, handler: _shrinkDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.HIDDEN_SCREEN, handler: _hiddenDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.ADVANCED_SCREEN, handler: _addvancedDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.ANIMATEDSTACK_SCREEN, handler: _animatedStackDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.EASY_SCREEN, handler: _easyDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.ELASTIC_SCREEN, handler: _elasticDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.KF_SCREEN, handler: _kfDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.ADMIN_SCREEN, handler: _adminDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.ADAPTIVE_SCREEN, handler: _adaptiveDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.ANIMATION_SCREEN, handler: _animationDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.ANIMATION2_SCREEN, handler: _animation2DrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.MULTILEVEL_SCREEN, handler: _multiLevelDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.CURVED_SCREEN, handler: _curvedDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.FANCY_SCREEN, handler: _fancyDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.SLIDEE_SCREEN, handler: _slideDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.RAIL_SCREEN, handler: _railDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.SLIDABLE_SCREEN, handler: _slidableDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.MENU_SCREEN, handler: _menuDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.FLURRY_SCREEN, handler: _flurryDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.FOLDING_SCREEN, handler: _foldingDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.SIDEMENU_SCREEN, handler: _sideMenuDrawerHandler, transitionType: TransitionType.fadeIn);

    // Bottom Bar
    router.define(Routes.CONVEXBAR_SCREEN, handler: _convexBarDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.PERSISTENT_SCREEN, handler: _persistentBarDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.CURVEDBOTTOMBAR_SCREEN, handler: _curvedBarDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.NAVYBOTTOMBAR_SCREEN, handler: _navyBarDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.SALMONBOTTOMBAR_SCREEN, handler: _salmonyBarDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.SNACKBOTTOMBAR_SCREEN, handler: _snackBarDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.GOOGLEBOTTOMBAR_SCREEN, handler: _googleBarDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.ANIMATEDBOTTOMBAR_SCREEN, handler: _animatedBarDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.EXPANDABLEBOTTOMBAR_SCREEN, handler: _expandableBarDrawerHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.CUSTOMBOTTOMBAR_SCREEN, handler: _customBarDrawerHandler, transitionType: TransitionType.fadeIn);


  }
}