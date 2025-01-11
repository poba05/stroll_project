import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroll_project/Themes/colors.dart';

class CustomRadioButton extends StatefulWidget {
  final String text;
  final String value;
  final String? selectedOption;
  final Function(String?) onChanged;

  const CustomRadioButton({
    Key? key,
    required this.text,
    required this.value,
    required this.selectedOption,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(widget.value);
      },
      child: Container(
        width: 200,
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: widget.selectedOption == widget.value
              ? Coolors.main
              : Coolors.black,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Coolors.main,
            width: 1.5,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.value, // Assuming 'value' is used as the option label
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: widget.selectedOption == widget.value
                      ? Coolors.black
                      : Coolors.main,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              widget.text,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: widget.selectedOption == widget.value
                      ? Coolors.black
                      : Coolors.white,
                  fontSize: 14,
                ),
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
