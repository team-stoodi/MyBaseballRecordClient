import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String? title;
  final Widget? leadingIcon;
  final Widget? trailingIcon;

  const AppBarWidget({
    super.key,
    this.title,
    this.leadingIcon,
    this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: leadingIcon,
      title: title != null ? Text(title!) : null,
      actions: trailingIcon != null ? [trailingIcon!] : null,
    );
  }
}
