import 'package:book_log/constants/colors.dart';
import 'package:flutter/material.dart';

class ReviewPage extends StatefulWidget {
  final bool isEditing;
  final Function? onBackPressed;

  const ReviewPage({super.key, this.isEditing = false, this.onBackPressed});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryWhite,
        elevation: 1.0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            if (widget.onBackPressed != null) {
              widget.onBackPressed!();
            }
          },
          icon: Icon(Icons.arrow_back, color: AppColors.primaryBlack),
        ),
        title: Text(''),
        actions:
            widget.isEditing
                ? [
                  IconButton(
                    icon: Icon(Icons.edit, color: AppColors.primaryBlack),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.delete, color: AppColors.primaryBlack),
                    onPressed: () {
                      // showDialog(context: context, builder: (context) =>
                      //  AlertDialog(
                      //   title: Text('삭제 확인'),
                      //   content: Text('정말 삭제하시겠습니까?'),
                      //   actions: [
                      //     TextButton(
                      //       child: Text('취소'),
                      //       onPressed: (){}),
                      //       TextButton(child: Text('삭제'), onPressed: (){ })
                      //       ]
                      // ))
                    },
                  ),
                ]
                : [],
      ),
      body: Center(child: Text('메모')),
    );
  }
}
