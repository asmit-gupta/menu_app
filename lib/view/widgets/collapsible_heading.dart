import 'package:flutter/material.dart';

class CollapsibleHeading extends StatefulWidget {
  final String name;
  final bool defaultState;
  final void Function(bool currentState) currentState;  
  const CollapsibleHeading(
      {super.key,
      required this.name,
     
      this.defaultState = true, required this.currentState});

  @override
  State<CollapsibleHeading> createState() => _CollapsibleHeadingState();
}

class _CollapsibleHeadingState extends State<CollapsibleHeading> {
  late bool isExpanded;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isExpanded = widget.defaultState;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.name,
            style: const TextStyle(
              color: Color(0xFF4A5662),
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          const Expanded(
            child: Divider(
              endIndent: 0,
              indent: 0,
              thickness: 0.2,
              color: Color(0xFF4A5662),
            ),
          ),
          const SizedBox(
            width: 6.0,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                isExpanded = !isExpanded;
              });
              widget.currentState?.call(isExpanded);
            },
            icon: Icon(
              isExpanded
                  ? Icons.arrow_drop_up_rounded
                  : Icons.arrow_drop_down_rounded,
              color: const Color(0xFF3CBCB4),
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}
