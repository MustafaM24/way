import 'package:flutter/material.dart';
import 'package:way/app/pages/personal_screens/shop_detail/shop_detail_screen.dart';
import 'package:way/app/pages/personal_screens/appointments_Page/add_review.dart';
import 'package:way/router/router.dart';
import 'package:way/router/router_arguments.dart';
import 'package:way/style/colors.dart';

class Appointment {
  //variables
  final String serviceName;
  final String shopName;
  final String shopImage;
  final String appointmentTime;
  final String appointmentMonth;
  final String appointmentDate;

  Appointment({
    required this.serviceName,
    required this.shopName,
    required this.shopImage,
    required this.appointmentTime,
    required this.appointmentMonth,
    required this.appointmentDate,
  });
}

class AppointmentsScreen extends StatefulWidget {
  const AppointmentsScreen({Key? key}) : super(key: key);

  @override
  State<AppointmentsScreen> createState() => _AppointmentsScreenState();
}

class _AppointmentsScreenState extends State<AppointmentsScreen> {
  final List<Appointment> _finishedAppointments = [
    Appointment(
        // finished appointmetns data for defined vaiables
        serviceName: "Haircut",
        shopName: "Freaky's Shop",
        shopImage: "assets/way/add1.png",
        appointmentMonth: "December",
        appointmentTime: "2:30 PM",
        appointmentDate: "25"),
    Appointment(
        serviceName: "Massage",
        shopName: "Relax Spa",
        shopImage: "assets/way/add3.png",
        appointmentMonth: "December",
        appointmentTime: "9:00 PM",
        appointmentDate: "11"),
  ];

  final List<Appointment> _upcomingAppointments = [
    Appointment(
        // upcoming appointmetns data for defined vaiables
        serviceName: "Manicure",
        shopName: "Nails by Mia",
        shopImage: "assets/way/add1.png",
        appointmentMonth: "January",
        appointmentTime: "5:30 PM",
        appointmentDate: "19"),
    Appointment(
        serviceName: "Facial",
        shopName: "Glow Beauty",
        shopImage: "assets/way/add2.png",
        appointmentMonth: "March",
        appointmentTime: "3:30 PM",
        appointmentDate: "2"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(
        elevation: 0, // to remove shadow
        backgroundColor: CustomColors.transparent,
        title: Text(
          "Appointments",
          style: TextStyle(
              fontSize: 16,
              color: CustomColors.secondaryblack,
              fontWeight: FontWeight.w900),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle(
                "FINISHED APPOINTMENTS"), // define the page into 2 sections for finished and upcoming appointments
            _buildAppointmentsList(
                _finishedAppointments), // call finished appointments list
            _buildSectionTitle(
                "UPCOMING APPOINTMENTS"), // define the page into 2 sections for finished and upcoming appointments
            _buildAppointmentsList2(
                _upcomingAppointments), // call upcoming appointments list
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w900,
            color: CustomColors.labelGrey),
      ),
    );
  }

// build finished appointments list

  Widget _buildAppointmentsList(List<Appointment> appointments) {
    return ListView.builder(
      physics:
          NeverScrollableScrollPhysics(), // to disable scrolling for this section and keep scroll for overall screen
      shrinkWrap: true,
      itemCount: appointments.length,
      itemBuilder: (BuildContext context, int index) {
        final appointment = appointments[index];
        // code for the card starts here
        return Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
            // padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10), // for UI purposes
            child: Card(
                color: CustomColors.shadowGrey,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                    // padding: const EdgeInsets.all(1),
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 65,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // SizedBox(height: 8),
                                          Text(
                                            // added space for UI purposes
                                            "           ${appointment.serviceName}",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            // added space for UI purposes

                                            "                 with ${appointment.shopName}",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[600],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                radius: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.05,
                                                backgroundImage: AssetImage(
                                                    appointment.shopImage),
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                appointment.shopName,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0xFF000000),
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),

                                          // book again button
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.0),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                // navigate to add review screen
                                                // onTap:() =>
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            ShopDetailScreen(
                                                              indexOfShopAd: 0,
                                                            )));
                                              },
                                              child: Text(
                                                "Book Again",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                primary:
                                                    CustomColors.primaryBlue,
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 30,
                                                  vertical: 4,
                                                ),
                                              ),
                                            ),
                                          ),

                                          // add review button
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.0),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                // navigate to add review screen
                                                // onTap:() =>
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            AddReviewScreen()));
                                              },
                                              child: Text(
                                                "  Add Review",
                                                style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                elevation: 0,
                                                primary:
                                                    CustomColors.shadowGrey,
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 30,
                                                  vertical: 2,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      // appointment date
                                      // this is in button format but it is not clickable so it would not impact anything
                                      // i made it a button so if you want modify it to be clickable in the future it would be easier
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          primary: CustomColors.shadowGrey,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          padding: EdgeInsets.zero,
                                        ),
                                        onPressed: () {
                                          //TODO: write navigation here.
                                        },
                                        child: Container(
                                          width: 100,
                                          height: 170,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                appointment.appointmentMonth,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF000000),
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                appointment.appointmentDate,
                                                style: TextStyle(
                                                  fontSize: 50,
                                                  color: Color(0xFF000000),
                                                  fontWeight: FontWeight.w100,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                appointment.appointmentTime,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: CustomColors.textGrey,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]))));
      },
    );
  }

// build upcoming appointments list

  Widget _buildAppointmentsList2(List<Appointment> appointments) {
    return ListView.builder(
      physics:
          NeverScrollableScrollPhysics(), // to disable scrolling for this section and keep scroll for overall screen
      shrinkWrap: true,
      itemCount: appointments.length,
      itemBuilder: (BuildContext context, int index) {
        final appointment = appointments[index];
        return Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
            // padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Card(
                color: CustomColors.shadowGrey,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                    // padding: const EdgeInsets.all(1),
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 65,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // SizedBox(height: 8),
                                          Text(
                                            // added space for UI purposes
                                            "           ${appointment.serviceName}",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            // added space for UI purposes

                                            "                 with ${appointment.shopName}",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[600],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                radius: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.05,
                                                backgroundImage: AssetImage(
                                                    appointment.shopImage),
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                appointment.shopName,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0xFF000000),
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.0),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                // navigate to add review screen
                                                // onTap:() =>
                                              },
                                              child: Text(
                                                "Cancel Booking",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                primary:
                                                    CustomColors.primaryBlue,
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 20,
                                                  vertical: 4,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          primary: CustomColors.shadowGrey,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          padding: EdgeInsets.zero,
                                        ),
                                        onPressed: () {
                                          //TODO: write navigation here.
                                        },
                                        child: Container(
                                          width: 100,
                                          height: 170,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                appointment.appointmentMonth,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF000000),
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                appointment.appointmentDate,
                                                style: TextStyle(
                                                  fontSize: 50,
                                                  color: Color(0xFF000000),
                                                  fontWeight: FontWeight.w100,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                appointment.appointmentTime,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: CustomColors.textGrey,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]))));
      },
    );
  }
}
