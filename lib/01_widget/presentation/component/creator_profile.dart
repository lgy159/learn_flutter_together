import 'package:flutter/material.dart';

class CreatorProfile extends StatelessWidget {
  final void Function() onTap;

  const CreatorProfile({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: Image.network(
            'https://i.namu.wiki/i/5-Ro59yaLXRsnzwUzd6j1jRHa19DXoe7LqtBx9tjeaVunJBn1FBzuRLb2YLZscqRUhNPR3bQwIPkVlmJjEPcs5NBrEdonL9ckmie1p7b4o9aItqDk94jZ3rVOlxlG2lx7jFnY3Jrkmd6FTgJwVbo4g.webp',
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
        ),
        const Column(
          children: [
            Text(
              'Laura wilson',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_pin,
                  color: Colors.greenAccent,
                ),
                Text('Laura wilson'),
              ],
            )
          ],
        ),
        const Spacer(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () => onTap.call(),
          child: const Text(
            'Follow',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
