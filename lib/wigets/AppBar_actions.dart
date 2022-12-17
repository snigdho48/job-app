import 'package:flutter/material.dart';
import 'package:job_app/Utils/ThemeUtils.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_app/Utils/constant.dart';

class AppBarActions extends StatelessWidget {
  AppBarActions({
    Key? key
  }) : super(key: key);

  final bool isDark=ThemeServices().loadTheme();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => ThemeServices().swtichTheme(),
          icon: isDark
              ? const Icon(
            Icons.sunny,
            color: Color(0xFF1C58F2),
          )
              : const Icon(
            Icons.nightlight_round,
            color: Colors.black54,
          ),
        ),
        InkWell(
            onTap: (){},
            child: SvgPicture.asset('images/notification.svg',color: isDark ? darkBlue.withOpacity(1) : Colors.black54)),
        const SizedBox(width: 10,),
        InkWell(
            onTap: (){},
            child: SvgPicture.asset('images/bookmark.svg',color: isDark ? darkBlue.withOpacity(1) : Colors.black54)),
        SizedBox(
          width: MediaQuery.of(context).size.width / 25,
        ),
      ],
    );
  }
}
