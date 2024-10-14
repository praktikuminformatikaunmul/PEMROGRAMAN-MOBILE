import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pertemuan_3/theme/theme.dart';

class Categories extends StatefulWidget {
  Function()? onTap;
  String kategori;
  IconData icon;

  Categories({
    super.key,
    required this.onTap,
    required this.kategori,
    required this.icon,
  });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 120,
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          // Menggunakan warna berbeda untuk background Categories
          color: Theme.of(context).primaryColor, // Warna berbeda dari AppTheme
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: FaIcon(
                widget.icon,
                size: 20,
                color: AppTheme.buttonTextColor,
              ),
            ),
            Text(
              widget.kategori,
              style: GoogleFonts.poppins(
                color: AppTheme.buttonTextColor,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
