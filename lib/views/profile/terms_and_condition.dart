import 'package:codes_thinkers/res/components/widgets/text.dart';
import 'package:flutter/material.dart';

class TermsAndCondtions extends StatelessWidget {
  TermsAndCondtions({super.key});
  String termsAndConditions =
      "Terms and Conditions of Use for Codes Thinker\n\n"
      "Acceptance of Terms: By accessing or using Codes Thinker (the \"Platform\"), you agree to comply with and be bound by these Terms and Conditions of Use (\"Terms\"). If you do not agree to these Terms, you may not access or use the Platform.\n\n"
      "User Conduct: You agree to use the Platform only for lawful purposes and in a manner consistent with all applicable laws and regulations. You must not engage in any activity that interferes with or disrupts the operation of the Platform.\n\n"
      "User Content: Any content, including but not limited to text, images, videos, code snippets, or other materials (\"User Content\") you submit or share on the Platform remains your responsibility. By posting User Content, you grant Codes Thinker a non-exclusive, royalty-free, perpetual, worldwide license to use, modify, adapt, reproduce, distribute, and display such User Content on the Platform.\n\n"
      "Privacy: Your privacy is important to us. Please review our Privacy Policy to understand how we collect, use, and disclose information about you when you access or use the Platform.\n\n"
      "Intellectual Property: The Platform and its content, including but not limited to text, graphics, logos, icons, images, audio clips, digital downloads, data compilations, and software, are the property of Codes Thinker or its licensors and are protected by copyright, trademark, and other intellectual property laws.\n\n"
      "Third-Party Links: The Platform may contain links to third-party websites or resources. Codes Thinker is not responsible for the content, products, or services provided by third parties, and your use of such websites or resources is at your own risk.\n\n"
      "Disclaimer of Warranties: The Platform is provided on an \"as is\" and \"as available\" basis, without any warranties of any kind, either express or implied. Codes Thinker does not warrant that the Platform will be uninterrupted or error-free, or that any defects will be corrected.\n\n"
      "Limitation of Liability: To the fullest extent permitted by law, Codes Thinker shall not be liable for any direct, indirect, incidental, special, consequential, or punitive damages arising out of or in any way related to your use of the Platform.\n\n"
      "Indemnification: You agree to indemnify and hold harmless Codes Thinker, its affiliates, officers, directors, employees, agents, and licensors from any claims, losses, damages, liabilities, and expenses (including legal fees) arising out of or related to your violation of these Terms or your use of the Platform.\n\n"
      "Modification of Terms: Codes Thinker reserves the right to modify, suspend, or terminate the Platform or these Terms at any time without prior notice. Your continued use of the Platform after any such changes constitutes your acceptance of the modified Terms.\n\n"
      "Governing Law: These Terms shall be governed by and construed in accordance with the laws of [Jurisdiction], without regard to its conflict of law principles.\n\n"
      "Contact Us: If you have any questions or concerns about these Terms, please contact us at [email address].";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: commonText(
            title: 'Terms & Condtions',
            size: 18.0,
            fontweight: FontWeight.bold,
            color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              commonText(
                  title: 'Terms & Condtions',
                  size: 18.0,
                  fontweight: FontWeight.bold,
                  color: Colors.black),
              commonText(
                  title: termsAndConditions, size: 16.0, color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
