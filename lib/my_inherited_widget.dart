import 'package:flutter/cupertino.dart';

class MyInheritedWidget extends InheritedWidget {
  final int count;
  final VoidCallback addCount;

  const MyInheritedWidget({
    super.key,
    required this.count,
    required this.addCount,
    required Widget child,
  }) : super(child: child);

  static MyInheritedWidget of(BuildContext context) {
    final MyInheritedWidget? result =
        context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
    assert(result != null, 'No MyInheritedWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(MyInheritedWidget old) {
    return old.count != count;
  }
}
