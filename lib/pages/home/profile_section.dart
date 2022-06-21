import 'package:flutter/material.dart';
import 'package:groceries_app/theme.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width > 390 ? 390 : double.infinity,
      margin: const EdgeInsets.all(24),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage('$contentPath/avatar.png'),
          ),
          const SizedBox(
            width: 11,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good morning',
                  style: body12Medium.copyWith(
                    color: lightFontGrey,
                  ),
                ),
                Text(
                  'Amelia Barlow',
                  style: body16Medium.copyWith(
                    color: lightFontDark,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
