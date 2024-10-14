import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pertemuan_3/theme/theme.dart'; // Import Theme

class DoctorListCard extends StatefulWidget {
  final Function()? onTap;
  final String imagePath;
  final String name;
  final double rating;
  final String address;
  final int age;

  const DoctorListCard({
    super.key,
    required this.onTap,
    required this.imagePath,
    required this.name,
    required this.rating,
    required this.address,
    required this.age,
  });

  @override
  State<DoctorListCard> createState() => _DoctorListCardState();
}

class _DoctorListCardState extends State<DoctorListCard> {
  double getResponsiveSize(double size) {
    // Get the width of the screen
    double screenWidth = MediaQuery.of(context).size.width;
    
    // Calculate the responsive size (adjust baseWidth as needed)
    return size * (screenWidth / 375); // Example for a base width of 375
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.only(
          top: getResponsiveSize(10), 
          left: getResponsiveSize(15), 
          right: getResponsiveSize(15)
        ),
        padding: EdgeInsets.only(
          top: getResponsiveSize(23), 
          bottom: getResponsiveSize(15)
        ),
        width: getResponsiveSize(140), // Responsive width
        height: getResponsiveSize(170), // Responsive height
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor, // Background sesuai tema
          borderRadius: BorderRadius.circular(getResponsiveSize(20)), // Responsive border radius
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: getResponsiveSize(85), // Responsive width
                  height: getResponsiveSize(85), // Responsive height
                ),
                Positioned(
                  left: getResponsiveSize(8), // Responsive position
                  child: Container(
                    width: getResponsiveSize(70), // Responsive width
                    height: getResponsiveSize(70), // Responsive height
                    decoration: BoxDecoration(
                      color: Theme.of(context).secondaryHeaderColor, // Sesuai tema
                      borderRadius: BorderRadius.circular(getResponsiveSize(50)), // Responsive border radius
                      image: DecorationImage(
                        image: AssetImage(widget.imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: getResponsiveSize(50), // Responsive position
                  right: getResponsiveSize(19.5), // Responsive position
                  child: Center(
                    child: Container(
                      width: getResponsiveSize(45), // Responsive width
                      height: getResponsiveSize(25), // Responsive height
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary, // Warna tombol sesuai tema
                        borderRadius: BorderRadius.circular(getResponsiveSize(10)), // Responsive border radius
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.solidStar,
                            color: Theme.of(context).colorScheme.surface, // Warna bintang sesuai tema
                            size: getResponsiveSize(10), // Responsive icon size
                          ),
                          Text(
                            '${widget.rating}',
                            style: GoogleFonts.poppins(
                              color: AppTheme.buttonTextColor, // Warna teks
                              fontSize: getResponsiveSize(10), // Responsive font size
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Text(
              widget.name,
              style: GoogleFonts.poppins(
                fontSize: getResponsiveSize(14), // Responsive font size
                fontWeight: FontWeight.bold,
                color: AppTheme.buttonTextColor,
              ),
            ),
            Text(
              '${widget.address}, ${widget.age} y.o.',
              style: GoogleFonts.poppins(
                fontSize: getResponsiveSize(10), // Responsive font size
                fontWeight: FontWeight.normal,
                color: AppTheme.buttonTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
