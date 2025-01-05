import 'package:book_store/features/home/preserntation/views/home_view.dart';
import 'package:book_store/features/splash/presentaion/views/splash__view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView ='/homeView';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
        GoRoute(
        path: kHomeView ,
        builder: (context, state) => HomeView(),
      ),
    ],
  );
}
