import 'package:flutter/material.dart';

class PopUpDialog extends StatelessWidget {
  const PopUpDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white38,
      title: const Text(
        'Recipe Link',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
              'Copy recipe link and share your recipe link with friends and family.'),
          const SizedBox(height: 20), // 텍스트와 Stack 사이에 간격 추가
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            height: 40,
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    'app.Recipe.co/jollof_rice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(),
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // BorderRadius 설정
                      ),
                    ),
                    child: const FittedBox(
                      child: Text(
                        'Copy Link',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
