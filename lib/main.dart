import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:folderstructureutils/utils/preferences/local_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folderstructureutils/utils/routes/routes.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await LocalStorageUtils.init();
      SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
    // required this.appConfig,
  });

  // final ApiBaseModel appConfig;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _goRouter = Routes();
  // @override
  // void initState() {
  //   apiEndPoints = ApiEndPoints(apiBaseModel: widget.appConfig);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      child: MaterialApp.router(
        title: 'FolderStructure',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: 
            {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            },
          ),
        ),
        routeInformationParser: _goRouter.router.routeInformationParser,
        routerDelegate: _goRouter.router.routerDelegate,
        routeInformationProvider: _goRouter.router.routeInformationProvider,
      ),
    );
  }
}
