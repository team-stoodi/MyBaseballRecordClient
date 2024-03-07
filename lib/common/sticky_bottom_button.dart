import 'package:flutter/material.dart';

class StickyBottomButton extends StatefulWidget {
  final String text;
  final VoidCallback onClick;
  final bool enabled;
  const StickyBottomButton({
    super.key,
    required this.text,
    required this.onClick,
    required this.enabled,
  });

  @override
  State<StickyBottomButton> createState() => _StickyBottomButtonState();
}

class _StickyBottomButtonState extends State<StickyBottomButton> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.grey,
      child: GestureDetector(
        onTap: widget.enabled ? widget.onClick : null,
        child: Container(
          height: 60,
          alignment: Alignment.center,
          child: Text(widget.text),
        ),
      ),
    );
  }
}
