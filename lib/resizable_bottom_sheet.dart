import 'package:flutter/material.dart';

Future<T?> showResizableBottomSheet<T>({
  required BuildContext context,
  required Widget child,
  bool isDismissible = true,
  bool enableDrag = true,
  bool useSafeArea = false,
  ShapeBorder? shape,
  Clip? clipBehavior,
  Color? barrierColor,
  String? barrierLabel,
  BoxConstraints? constraints,
  bool? requestFocus,
  RouteSettings? routeSettings,
  double? elevation,
  Offset? anchorPoint,
  double scrollControlDisabledMaxHeightRatio = 0,
  AnimationStyle? sheetAnimationStyle,
  bool? showDragHandle,
  AnimationController? transitionAnimationController,
  bool useRootNavigator = false,
  Color backgroundColor = Colors.transparent,
}) {
  return showModalBottomSheet<T>(
    context: context,
    isScrollControlled: true,
    isDismissible: isDismissible,
    enableDrag: enableDrag,
    useSafeArea: useSafeArea,
    shape: shape,
    clipBehavior: clipBehavior,
    barrierColor: barrierColor,
    barrierLabel: barrierLabel,
    constraints: constraints,
    routeSettings: routeSettings,
    elevation: elevation,

    anchorPoint: anchorPoint,
    scrollControlDisabledMaxHeightRatio: scrollControlDisabledMaxHeightRatio,
    sheetAnimationStyle: sheetAnimationStyle,
    showDragHandle: showDragHandle,
    transitionAnimationController: transitionAnimationController,
    useRootNavigator: useRootNavigator,
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: IntrinsicHeight(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: shape == null
                ? BoxDecoration(
                    color: backgroundColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  )
                : null, // use shape if provided
            child: child,
          ),
        ),
      );
    },
  );
}
