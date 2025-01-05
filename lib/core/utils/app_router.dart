import 'package:book_store/features/home/preserntation/views/bokk_details_view.dart';
import 'package:book_store/features/home/preserntation/views/home_view.dart';
import 'package:book_store/features/search/views/search_view.dart';
import 'package:book_store/features/splash/presentaion/views/splash__view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kSearchView = '/SearchView';

  static const kBookDetailsView = '/BookDetailsView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
