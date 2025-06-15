import 'package:animal_voice_app/View/Categary/categary_page.dart';
import 'package:flutter/material.dart';

class TermsOfUsePage extends StatelessWidget {
  const TermsOfUsePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
        physics: BouncingScrollPhysics(),
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
              Icons.person,
              "By pressing the Accept button, I declare I have read and accepted the following condition of use :",
            ),
            _buildPolicyItem(
              screenSize,
              Icons.gavel,
              "If we find the app is being used outside its terms of use, we may restrict access to it.",
            ),
            _buildPolicyItem(
              screenSize,
              Icons.block,
              "Any type of modification to the app or its components is not allowed.",
            ),
            _buildPolicyItem(
              screenSize,
              Icons.description,
              "Privacy Policy may be updated from time to time for any reason. We will notify you of any changes to our Privacy Policy by posting the new Privacy Policy here.",
            ),
            _buildPolicyItem(
              screenSize,
              Icons.visibility_off,
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
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => CategoryPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown[700],
                  padding: EdgeInsets.symmetric(
                    horizontal: screenSize.width * 0.15,
                    vertical: screenSize.height * 0.02,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      screenSize.width * 0.02,
                    ),
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
            Image.asset(
              "assets/Rectangle 18.png",
              width: screenSize.width,
              fit: BoxFit.cover,
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
          Icon(icon, size: screenSize.width * 0.06, color: Colors.brown[700]),
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
