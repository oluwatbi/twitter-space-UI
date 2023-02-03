import 'package:flutter/material.dart';
import 'package:twitter_space_ui/models/user_model.dart';
import 'package:twitter_space_ui/widgets/space_user_status.dart';

class SpaceUser extends StatelessWidget {
  final UserModel userModel;
  const SpaceUser({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ClipOval(
          child: Image(
            image: NetworkImage(
              "https://i.pravatar.cc/300",
            ),
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          userModel.name,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpaceUserStatus(userModel: userModel),
            Text(
              userModel.title,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        )
      ],
    );
  }
}
