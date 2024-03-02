import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/widgets/widgets%20for%20FormForUploadStudentData%20view/body_of_form.dart';
import 'package:flutter_application_1/widgets/widgets%20for%20FormForUploadStudentData%20view/botoom_of_form.dart';
import 'package:flutter_application_1/widgets/widgets%20for%20FormForUploadStudentData%20view/top_of_form.dart';

class FormForUploadStudentData extends StatelessWidget {
  const FormForUploadStudentData({super.key});
  static String id = 'FormForUploadStudentData';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Text(
              'جامعة بنها',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              kLogo,
              width: 60,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              kAppName,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              margin: EdgeInsets.only(bottom: 0),
              padding: EdgeInsets.fromLTRB(17.0, 16.0, 16.0, 8.0),
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 130, right: 50),
                leading: Text(
                  'مرحبا:احمد',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                title: Icon(
                  Icons.account_circle,
                  fill: 1,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
            ),
            ListTile(
              title: Text('Item 2'),
            ),
          ],
        ),
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              TopOfForm(),
              BodyOfForm(),
              BottomOfForm(),
            ],
          ),
        ),
      ),
    );
  }
}
