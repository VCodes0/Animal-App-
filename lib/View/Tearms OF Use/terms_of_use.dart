import 'package:flutter/material.dart';

class TermsOfUsePage extends StatelessWidget {
  const TermsOfUsePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Terms of Use",
          style: TextStyle(
            color: Colors.black,
            fontSize: screenSize.width * 0.05,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * 0.05,
          vertical: screenSize.height * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Application is warning you about the app that gives you many services and important information for safer and efficient use.",
              style: TextStyle(
                fontSize: screenSize.width * 0.038,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: screenSize.height * 0.02),
            Text(
              "User-Generated Content Policy(UGC) By pressing the Accept button, I declare I have read and accepted the following condition of use:",
              style: TextStyle(
                fontSize: screenSize.width * 0.038,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: screenSize.height * 0.03),
            _buildPolicyItem(
              screenSize,
              Icons
                  .person, // Using a generic person icon, replace if you have specific asset
              "By pressing the Accept button, I declare I have read and accepted the following condition of use :",
            ),
            _buildPolicyItem(
              screenSize,
              Icons
                  .gavel, // Using a generic gavel icon, replace if you have specific asset
              "If we find the app is being used outside its terms of use, we may restrict access to it.",
            ),
            _buildPolicyItem(
              screenSize,
              Icons
                  .block, // Using a generic block icon, replace if you have specific asset
              "Any type of modification to the app or its components is not allowed.",
            ),
            _buildPolicyItem(
              screenSize,
              Icons
                  .description, // Using a generic description icon, replace if you have specific asset
              "Privacy Policy may be updated from time to time for any reason. We will notify you of any changes to our Privacy Policy by posting the new Privacy Policy here.",
            ),
            _buildPolicyItem(
              screenSize,
              Icons
                  .visibility_off, // Using a generic visibility_off icon, replace if you have specific asset
              "We do not share any kind of your Personal Data with third parties.",
            ),
            SizedBox(height: screenSize.height * 0.04),
            Text(
              "You can find out more information by clicking on the Following link :",
              style: TextStyle(
                fontSize: screenSize.width * 0.038,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: screenSize.height * 0.01),
            Text(
              "Terms and conditions of use",
              style: TextStyle(
                fontSize: screenSize.width * 0.04,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: screenSize.height * 0.01),
            Text(
              "Privacy policy.",
              style: TextStyle(
                fontSize: screenSize.width * 0.04,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: screenSize.height * 0.05),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown[700], // Brown color as in image
                  padding: EdgeInsets.symmetric(
                    horizontal: screenSize.width * 0.15,
                    vertical: screenSize.height * 0.02,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      screenSize.width * 0.02,
                    ), // Rounded corners
                  ),
                ),
                child: Text(
                  "Accept",
                  style: TextStyle(
                    fontSize: screenSize.width * 0.045,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenSize.height * 0.04),
            // Horizontal image gallery at the bottom
            Image.asset(
              "assets/images/tofimg.png", // Assuming this is your image for the dog gallery
              width: screenSize.width,
              fit: BoxFit.cover, // Cover the width
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPolicyItem(Size screenSize, IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: screenSize.height * 0.02),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: screenSize.width * 0.06,
            color: Colors.brown[700], // Icon color as seen in image
          ),
          SizedBox(width: screenSize.width * 0.03),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: screenSize.width * 0.038,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
