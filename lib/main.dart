import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:book_log/theme/app_theme.dart';
import 'package:book_log/models/book_review.dart';
import 'package:book_log/constants/colors.dart';
import 'package:book_log/router/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter<BookReview>(BookReviewAdapter());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   // theme: AppTheme.theme, // 마지막에 확인 후 수정해서 주석 해제하기
    //   home: Scaffold(body: MainScreen()),
    // );
    return MaterialApp.router(routerConfig: router);
  }
}

class MainScreen extends StatelessWidget {
  final Widget child;
  const MainScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _getCurrentIndex(context),
        onTap: (idx) {
          switch (idx) {
            case 0:
              context.push('/calendar');
              break;
            case 1:
              context.push('/bookshelf');
              break;
            case 2:
              context.push('/review');
              break;
            case 3:
              context.push('/tag');
              break;
            case 4:
              context.push('/setting');
              break;
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shelves), label: ''),
          BottomNavigationBarItem(
            icon: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.btnPoint,
              ),
              child: Center(
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryBlack,
                  ),
                  child: Icon(
                    Icons.add,
                    size: 24,
                    color: AppColors.primaryWhite,
                  ),
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.local_offer), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.iconPrimary,
        unselectedItemColor: AppColors.iconSecondary,
        showSelectedLabels: false, // 라벨 공간 제거
        showUnselectedLabels: false, // 라벨 공간 제거
      ),
    );
  }

  int _getCurrentIndex(BuildContext context) {
    final GoRouterState state = GoRouterState.of(context);
    final location = state.uri.toString();
    if (location == "/calendar") return 0;
    if (location == "/bookshelf") return 1;
    if (location == "/tag") return 3;
    if (location == "/setting") return 4;
    return 0;
  }
}
