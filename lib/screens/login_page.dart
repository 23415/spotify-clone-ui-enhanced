import 'package:flutter/material.dart';
import 'package:music_app/screens/home_page.dart';
import 'package:music_app/screens/phone_login_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    void onButtonClicked(){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return PhoneLoginPage();
      }));
    }
    return Scaffold(
      backgroundColor: const Color.fromRGBO(40, 40, 40, 0.8),
      body: Column(
        children: [
          Spacer(
            flex: 2,
          ),
          Container(
            width: 50,
            height: 50,
            child: Image(
                image: AssetImage('assets/images/logo.png'), fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18,bottom: 28,left: 18),
            child: Center(child: Text('Millions of songs.\n  Free on Spotify.',
            style: TextStyle(color: Colors.white,fontSize: 28),
            ),),
          ),
          Container(
            padding: EdgeInsets.only(left: 22, right: 22, top: 8, bottom: 8),
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            clipBehavior: Clip.hardEdge,
            child: ElevatedButton(
              onPressed: onButtonClicked,
              child: Text('sign up free'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: StadiumBorder(),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 22, right: 22, top: 8, bottom: 8),
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            clipBehavior: Clip.hardEdge,
            child: ElevatedButton(
              onPressed: onButtonClicked,
              child: Row(
                children: [
                  Icon(Icons.phone_android_rounded),
                  SizedBox(width: 85,),
                  Center(child: Text('continue with phone number')),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(40, 40, 40, 0.8),
                shape: StadiumBorder(),
                side: const BorderSide(
                  width: 2,
                  color: Colors.white24,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 22, right: 22, top: 8, bottom: 8),
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            clipBehavior: Clip.hardEdge,
            child: ElevatedButton(
              onPressed: onButtonClicked,
              child: Row(
                children: [
                  Icon(Icons.apple),
                  SizedBox(width: 85,),
                  Center(child: Text('continue with google')),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(40, 40, 40, 0.8),
                shape: StadiumBorder(),
                side: const BorderSide(
                  width: 2,
                  color: Colors.white24,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 22, right: 22, top: 8, bottom: 8),
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            clipBehavior: Clip.hardEdge,
            child: ElevatedButton(
              onPressed: onButtonClicked,
              child: Row(
                children: [
                  Icon(Icons.facebook),
                  SizedBox(width: 85,),
                  Center(child: Text('continue with facebook')),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(40, 40, 40, 0.8),
                shape: StadiumBorder(),
                side: const BorderSide(
                  width: 2,
                  color: Colors.white24,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 22, right: 22, top: 8, bottom: 8),
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            clipBehavior: Clip.hardEdge,
            child: ElevatedButton(
              onPressed: onButtonClicked,
              child: Row(
                children: [
                  Icon(Icons.apple),
                  SizedBox(width: 85,),
                  Center(child: Text('continue with apple')),
                ],
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(40, 40, 40, 0.8),
                shape: const StadiumBorder(),
                side: const BorderSide(
                  width: 2,
                  color: Colors.white24,
                ),
              ),
            ),
          ),
          TextButton(onPressed: () {}, child: Text('Log in',style: TextStyle(color: Colors.white),)),
          Spacer()
        ],
      ),
    );
  }
}
