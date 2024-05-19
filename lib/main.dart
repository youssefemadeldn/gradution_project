import 'package:flutter/material.dart';

import 'package:flutter_application_1/Features/checkout/presentation/views/payment_details_view.dart';
import 'package:flutter_application_1/views/Smart%20Service%20Views/announcements_and_seminar_dates.dart';
import 'package:flutter_application_1/views/Smart%20Service%20Views/books_and_resource_materials.dart';
import 'package:flutter_application_1/views/Smart%20Service%20Views/exams_schedule_view.dart';
import 'package:flutter_application_1/views/Smart%20Service%20Views/postgraduate_results_view.dart';
import 'package:flutter_application_1/views/Smart%20Service%20Views/register_a_search_point.dart';
import 'package:flutter_application_1/views/Smart%20Service%20Views/register_matrials_view.dart';
import 'package:flutter_application_1/views/Smart%20Service%20Views/study_schedule.dart';
import 'package:flutter_application_1/views/b_home_view.dart';
import 'package:flutter_application_1/views/form_for_upload_student_data_view.dart';
import 'package:flutter_application_1/views/a_login_view.dart';

void main() {
  runApp(const CheckOutApp());
}

class CheckOutApp extends StatelessWidget {
  const CheckOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.id,
      routes: {
        PaymentDetailsView.id: (context) => PaymentDetailsView(),
        LoginPage.id: (context) => LoginPage(),
        HomeView.id: (context) => HomeView(),
        RegisterMartialsView.id: (context) => RegisterMartialsView(),
        FormForUploadStudentData.id: (context) => FormForUploadStudentData(),
        //
        PostgraduateResultsView.id: (context) => PostgraduateResultsView(),
        BooksAndResourceMaterialsView.id: (context) =>
            BooksAndResourceMaterialsView(),
        ExamsScheduleView.id: (context) => ExamsScheduleView(),
        RegisterASearchPoint.id: (context) => RegisterASearchPoint(),
        AnnouncementsAndSeminarDates.id: (context) =>
            AnnouncementsAndSeminarDates(),
        StudySchedule.id: (context) => StudySchedule(),
      },
    );
  }
}

// 7. Create account => https://dashboard.stripe.com/register

// 1- create payment intent (amount , currency)
