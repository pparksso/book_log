import 'package:book_log/constants/text_styles.dart';
import 'package:flutter/material.dart';

class AddBookModal {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Align(
            alignment: Alignment.center,
            child: Text(
              '책 제목',
              style: AppTextStyles.bodyM.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          titlePadding: EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          contentPadding: EdgeInsets.zero,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildDivider(),
              _buildActionButton(context, "기존의 책", () {
                // 페이지
                // 앱바 존재(title: 검색 목록) + 좌측 뒤로가기
                // 검색창 위에 띄우기
                // 밑에 기존의 책들 띄워주기(최신순)
              }),
              _buildDivider(),
              _buildActionButton(context, "인터넷 검색", () {
                // 페이지
                // 앱바 존재(title: 검색 목록) + 좌측 뒤로가기
                // 검색창 위에 띄우기
                // 밑에 비어있게
              }),
              _buildDivider(),
              _buildActionButton(context, "바코드 스캔", () {
                // 카메라
                // 닫기버튼 존재
              }),
              _buildDivider(),
              _buildActionButton(context, "직접 입력", () {
                // 밑에서 위로 올라오는 모달
                // 사진, 제목, 부제, 지은이 추가 가능(나머지는 추후..)
              }),
            ],
          ),
        );
      },
    );
  }

  static Widget _buildActionButton(
    BuildContext context,
    String label,
    VoidCallback onPressed,
  ) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        minimumSize: Size(double.infinity, 20),
        padding: EdgeInsets.symmetric(vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      child: Text(label, style: AppTextStyles.modalBtnTxt),
    );
  }

  static Widget _buildDivider() {
    return Divider(height: 1, thickness: 1, color: Colors.grey[300]);
  }
}
