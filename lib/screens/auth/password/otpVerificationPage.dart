import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:footx/components/Buttons.dart';
import 'package:footx/components/login/customTextField.dart';
import 'package:footx/components/login/customBackButton.dart';
import 'package:footx/screens/auth/login/loginPage.dart';
import 'package:footx/screens/auth/password/createNewPasswordPage.dart';
import 'package:footx/services/theme.dart';

class OTPVerificationPage extends StatefulWidget {
  const OTPVerificationPage({Key? key}) : super(key: key);

  @override
  _OTPVerificationPageState createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {
  late TextEditingController _firstController;
  late TextEditingController _secondController;
  late TextEditingController _thirdController;
  late TextEditingController _fourthController;

  late FocusNode _firstFocusNode;
  late FocusNode _secondFocusNode;
  late FocusNode _thirdFocusNode;
  late FocusNode _fourthFocusNode;

  @override
  void initState() {
    super.initState();
    _firstController = TextEditingController();
    _secondController = TextEditingController();
    _thirdController = TextEditingController();
    _fourthController = TextEditingController();

    _firstFocusNode = FocusNode();
    _secondFocusNode = FocusNode();
    _thirdFocusNode = FocusNode();
    _fourthFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _firstController.dispose();
    _secondController.dispose();
    _thirdController.dispose();
    _fourthController.dispose();

    _firstFocusNode.dispose();
    _secondFocusNode.dispose();
    _thirdFocusNode.dispose();
    _fourthFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(27.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: CustomBackButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Vérification OTP',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Urbanist-Bold',
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Entrez le code OTP envoyé à votre numéro de téléphone.",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildOTPField(context, _firstController,
                            _firstFocusNode, _secondFocusNode),
                        _buildOTPField(context, _secondController,
                            _secondFocusNode, _thirdFocusNode),
                        _buildOTPField(context, _thirdController,
                            _thirdFocusNode, _fourthFocusNode),
                        _buildOTPField(
                            context, _fourthController, _fourthFocusNode, null),
                      ],
                    ),
                    const SizedBox(height: 24),
                    CustomButton80(
                      color: theme.colorScheme.onBackground,
                      text: 'Vérifier',
                      onPressed: () {
                        // Implement OTP verification logic here
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const CreateNewPasswordPage()));
                      },
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      color: theme.colorScheme.onSurface,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Urbanist',
                    ),
                    children: <TextSpan>[
                      const TextSpan(
                        text: "Vous n'avez pas reçu le code ? ",
                      ),
                      TextSpan(
                        text: 'Renvoyer',
                        style: const TextStyle(
                          color: ThemeClass.brightBlue,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Implement resend OTP logic here
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

    Widget _buildOTPField(BuildContext context, TextEditingController controller,
      FocusNode currentFocusNode, FocusNode? nextFocusNode) {
    return SizedBox(
      width: 70,
      height: 60,
      child: TextField(
        controller: controller,
        focusNode: currentFocusNode,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: const TextStyle(fontSize: 24),
        decoration: InputDecoration(
          counterText: "",
          contentPadding: EdgeInsets.symmetric(vertical: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 2, color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        onChanged: (value) {
          if (value.length == 1 && nextFocusNode != null) {
            nextFocusNode.requestFocus();
          }
        },
      ),
    );
  }
}
