import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_templete/core/enums/bottom_Navigation.dart';
import 'package:flutter_templete/main.dart';
import 'package:flutter_templete/ui/shared/colors.dart';
import 'package:flutter_templete/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templete/ui/shared/utils.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({
    super.key,
    required this.bottomNavigationEnum,
    required this.onTap,
  });

  final BottomNavigationEnum bottomNavigationEnum;
  final Function(BottomNavigationEnum, int) onTap;

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: screenWidth(1),
          height: screenWidth(6.2),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: AppColors.mainWhiteColor,
            border: Border.all(
              color: AppColors.mainpurple1,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.mainpurple1withopa,
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),
        ),
        PositionedDirectional(
          bottom: 0,
          start: 0,
          end: 0,
          child: Container(
            height: screenWidth(6),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: screenWidth(39),
                horizontal: screenWidth(28),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavItem(
                    imageName: 'ic_profile',
                    isSelected: widget.bottomNavigationEnum ==
                        BottomNavigationEnum.PROFILE,
                    onTap: () {
                      widget.onTap(BottomNavigationEnum.PROFILE, 0);
                    },
                  ),
                  NavItem(
                    imageName: 'ic_star',
                    isSelected: widget.bottomNavigationEnum ==
                        BottomNavigationEnum.IMPORTANTQUESTIONS,
                    onTap: () {
                      widget.onTap(BottomNavigationEnum.IMPORTANTQUESTIONS, 1);
                    },
                  ),
                  NavItem(
                    imageName: 'ic_home',
                    isSelected: widget.bottomNavigationEnum ==
                        BottomNavigationEnum.HOME,
                    onTap: () {
                      widget.onTap(BottomNavigationEnum.HOME, 2);
                    },
                  ),
                  NavItem(
                    imageName: 'ic_notification',
                    isSelected: widget.bottomNavigationEnum ==
                        BottomNavigationEnum.NOTIFICATIONS,
                    onTap: () {
                      widget.onTap(BottomNavigationEnum.NOTIFICATIONS, 3);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class NavItem extends StatefulWidget {
  const NavItem({
    super.key,
    this.count,
    this.text,
    required this.imageName,
    required this.isSelected,
    required this.onTap,
  });
  final int? count;
  final String? text;
  final String? imageName;
  final bool? isSelected;
  final Function? onTap;

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap!();
      },
      child: Container(
        alignment: AlignmentDirectional.center,
        width: screenWidth(5),
        height: screenWidth(7.75),
        decoration: BoxDecoration(
          border: widget.isSelected!
              ? BorderDirectional(
                  bottom: BorderSide(
                    color: AppColors.mainpurple1,
                    width: 2,
                  ),
                )
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/${widget.imageName}.svg',
              color: AppColors.mainpurple1,
              width: screenWidth(13),
              height: screenWidth(13),
            ),
            if (widget.text != null) ...[
              (screenHieght(100)).ph,
              CustomText(
                text: widget.text ?? "",
                textColor: widget.isSelected!
                    ? AppColors.hinttext
                    : AppColors.mainpurple2,
                fontSize: screenHieght(60),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
