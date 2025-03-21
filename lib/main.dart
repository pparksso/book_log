import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:book_log/theme/app_theme.dart';
import 'package:book_log/models/book_review.dart';
import 'package:book_log/screens/calendar.dart';
import 'package:book_log/screens/bookshelf.dart';
import 'package:book_log/screens/review.dart';
import 'package:book_log/screens/tag.dart';
import 'package:book_log/screens/setting.dart';
import 'package:book_log/constants/colors.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: AppTheme.theme, // 마지막에 확인 후 수정해서 주석 해제하기
      home: Scaffold(body: MainScreen()),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIdx = 0;

  final List<Widget> _pages = [
    CalendarPage(),
    BookShelfPage(),
    ReviewPage(),
    TagPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIdx],
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: _currentIdx,
        onTap: (idx) {
          setState(() {
            _currentIdx = idx;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.iconPrimary,
        unselectedItemColor: AppColors.iconSecondary,
        showSelectedLabels: false, // 라벨 공간 제거
        showUnselectedLabels: false, // 라벨 공간 제거
      ),
    );
  }
}
