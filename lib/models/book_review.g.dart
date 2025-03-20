// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_review.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookReviewAdapter extends TypeAdapter<BookReview> {
  @override
  final int typeId = 0;

  @override
  BookReview read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookReview()
      ..id = fields[0] as String
      ..bookTitle = fields[1] as String
      ..pagesRead = fields[2] as String
      ..dateRead = fields[3] as DateTime
      ..review = fields[4] as String
      ..reviewTags = (fields[5] as List).cast<String>()
      ..sentence = fields[6] as String
      ..sentenceTags = (fields[7] as List).cast<String>()
      ..rating = fields[8] as int?
      ..keyword = fields[9] as String;
  }

  @override
  void write(BinaryWriter writer, BookReview obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.bookTitle)
      ..writeByte(2)
      ..write(obj.pagesRead)
      ..writeByte(3)
      ..write(obj.dateRead)
      ..writeByte(4)
      ..write(obj.review)
      ..writeByte(5)
      ..write(obj.reviewTags)
      ..writeByte(6)
      ..write(obj.sentence)
      ..writeByte(7)
      ..write(obj.sentenceTags)
      ..writeByte(8)
      ..write(obj.rating)
      ..writeByte(9)
      ..write(obj.keyword);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookReviewAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
