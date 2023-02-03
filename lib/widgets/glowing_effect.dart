import 'package:flutter/material.dart';
import 'package:twitter_space_ui/helpers/colors.dart';

class GlowingEffect extends StatefulWidget {
  final IconData? icon;
  final double? size;
  final Function? onTap;
  const GlowingEffect({super.key, this.icon, this.size, this.onTap});

  @override
  State<GlowingEffect> createState() => _GlowingEffectState();
}

class _GlowingEffectState extends State<GlowingEffect>
    with SingleTickerProviderStateMixin {
  late AnimationController glowingCircle;

  @override
  void initState() {
    glowingCircle = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    )..repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    glowingCircle.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap != null
          ? () {
              print('tap tap tap');
              widget.onTap!();
            }
          : null,
      child: SizedBox(
        height: 150,
        width: 150,
        child: Stack(
          children: [
            ...List.generate(3, (index) {
              return FadeTransition(
                opacity: Tween<double>(begin: 1.0, end: 0.0).animate(
                  CurvedAnimation(
                    parent: glowingCircle,
                    curve: Interval(index * 0.2, (index * 0.2 + 0.6),
                        curve: Curves.easeInOut),
                  ),
                ),
                child: ScaleTransition(
                  scale: Tween<double>(begin: 1.0, end: 2.0).animate(
                    CurvedAnimation(
                      parent: glowingCircle,
                      curve: Interval(index * 0.2, (index * 0.2 + 0.6),
                          curve: Curves.easeInOut),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: TwitterColors.mainColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(75)),
                  ),
                ),
              );
            }),
            Center(
              child: Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: TwitterColors.mainColor,
                    borderRadius: BorderRadius.circular(75)),
                child: Icon(
                  widget.icon,
                  size: widget.size,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
