import 'package:flutter/material.dart';

class AuthTextInputWidget extends StatefulWidget {
  final String labelText;
  final String hintText;

  const AuthTextInputWidget({
    super.key,
    required this.labelText,
    required this.hintText,
  });

  @override
  State<AuthTextInputWidget> createState() => _AuthTextInputWidgetState();
}

class _AuthTextInputWidgetState extends State<AuthTextInputWidget> {
  final TextEditingController _controller = TextEditingController();
  bool _isTextNotEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.labelText,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
          TextField(
            controller: _controller,
            onChanged: (value) {
              setState(() {
                _isTextNotEmpty = value.isNotEmpty;
              });
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
              hintStyle: const TextStyle(
                fontSize: 20,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              suffixIcon: IconButton(
                icon: const Icon(Icons.cancel),
                color: _isTextNotEmpty ? Colors.black : Colors.grey,
                onPressed: () {
                  setState(() {
                    _controller.clear();
                    _isTextNotEmpty = false;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
