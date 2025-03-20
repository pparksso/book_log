// models/book_review.dart
import 'package:hive/hive.dart';

part 'book_review.g.dart';

// 책 이름, 읽은 페이지, 읽은 날짜, 리뷰,태그(리뷰), 오늘의 문장, 태그(문장), 별점, 키워드
@HiveType(typeId: 0)
class BookReview extends HiveObject {
  @HiveField(0)
  late String id;

  @HiveField(1)
  late String bookTitle;

  @HiveField(2)
  late String pagesRead;

  @HiveField(3)
  late DateTime dateRead;

  @HiveField(4)
  late String review;

  @HiveField(5)
  List<String> reviewTags = [];

  @HiveField(6)
  late String sentence;

  @HiveField(7)
  List<String> sentenceTags = [];

  @HiveField(8)
  int? rating;

  @HiveField(9)
  late String keyword;
}
