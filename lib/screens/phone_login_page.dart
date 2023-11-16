import 'package:flutter/material.dart';

import 'otp_page.dart';

class PhoneLoginPage extends StatefulWidget {
  const PhoneLoginPage({super.key});

  @override
  State<PhoneLoginPage> createState() => _PhoneLoginPageState();
}

class _PhoneLoginPageState extends State<PhoneLoginPage> {
  @override
  Widget build(BuildContext context) {
    const List<String> code = ['+91', '+62', '+82', '+1'];
    String? _selectedCode = code.first;
    TextEditingController phoneController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromRGBO(40, 40, 40, 0.8),
      body: Column(
        children: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 100),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        padding: EdgeInsets.all(12),
                        value: _selectedCode,
                        style: TextStyle(color: Colors.white38, fontSize: 18),
                        items: code.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (val) {
                          if (_selectedCode != null)
                            setState(() {
                              _selectedCode = val;
                            });
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: phoneController,
                    style: TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 17, color: Colors.white38),
                      hintText: 'Phone Number',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OtpPage(
                      phoneNumber: phoneController.text,
                    ),
                  ),
                );
              },
              child: Text('Next'),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
