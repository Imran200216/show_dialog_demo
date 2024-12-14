import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        child: InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: 320, // Set height
                    width: 500, // Set width
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF141414),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                        bottom: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        spacing: 16,
                        children: [
                          Row(
                            spacing: 16,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Color(0xFF35312F),
                                    width: 0.3,
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.home_mini_outlined,
                                    size: 24,
                                    color: Color(0xFFFFF2EE),
                                  ),
                                ),
                              ),
                              Column(
                                spacing: 4,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  /// title
                                  Text(
                                    "Gross House",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),

                                  /// subtitle
                                  Text(
                                    "Property offer",
                                    style: GoogleFonts.montserrat(
                                      color: Color(0xFFA0A0A1),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),

                          /// divider
                          Container(
                            clipBehavior: Clip.none,
                            child: Divider(
                              color: Color(0xFF2D2828),
                            ),
                          ),

                          /// description
                          Row(
                            spacing: 20,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.alarm,
                                size: 24,
                                color: Color(0xFF686969),
                              ),
                              Expanded(
                                child: Text(
                                  textAlign: TextAlign.start,
                                  "Grant notification permissions to stay updated with the latest alerts and updates. Allow access to ensure uninterrupted notifications.",
                                  style: GoogleFonts.montserrat(
                                    color: Color(0xFF686969),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          /// btns
                          /// btns
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Handle "Allow" button press
                                    Navigator.of(context).pop(); // Close dialog
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    "Allow",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 14),
                              // Spacing between buttons
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Handle "Cancel" button press
                                    Navigator.of(context).pop(); // Close dialog
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    "Cancel",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: Center(
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  // Add spacing between icon and text
                  Text(
                    "Hi Show Dialog",
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
