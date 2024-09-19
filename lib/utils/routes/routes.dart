import 'package:folderstructureutils/app/home/home.dart';
import 'package:go_router/go_router.dart';



class Routes {
  static const String splashScreen = '/';
  static const String homeScreen = '/home';


  GoRouter get router => _goRouter;

  late final GoRouter _goRouter = GoRouter(
    initialLocation: homeScreen,
    routes: [
      // GoRoute(
      //   path: splashScreen,
      //   builder: (context, state) => const SplashScreen(),
      // ),
      GoRoute(
        path: homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
     
    ],
  );
}
