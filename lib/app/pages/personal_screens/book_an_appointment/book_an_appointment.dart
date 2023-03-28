import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:way/app/common/buttons/appointment_buttons/AgentButton.dart';
import 'package:way/app/common/buttons/appointment_buttons/TimeButton.dart';
import 'package:way/app/pages/personal_screens/book_an_appointment/appointment_Confirmation.dart';
import 'package:way/style/colors.dart';
import 'package:way/app/common/buttons/appointment_buttons/TimeButton.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({Key? key}) : super(key: key);

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  int _selectedIndex = -1;

  void _handleTimeButtonPressed(int index) {
    setState(() {
      if (_selectedIndex == index) {
        _selectedIndex = -1;
      } else {
        _selectedIndex = index;
      }
    });
  }

  int _selectedAgentIndex = -1;

  void _handleAgentButtonPressed(int agentindex) {
    setState(() {
      if (_selectedAgentIndex == agentindex) {
        _selectedAgentIndex = -1;
      } else {
        _selectedAgentIndex = agentindex;
      }
    });
  }

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Color(0xFFFFFFFF),
        title: const Text(
          "Book an Appointment",
          style: TextStyle(
            color: Color(0xFF000000),
            // letterSpacing: 1.2,
            fontWeight: FontWeight.w900,
          ),
        ),
        // centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                // Use `selectedDayPredicate` to determine which day is currently selected.
                // If this returns true, then `day` will be marked as selected.

                // Using `isSameDay` is recommended to disregard
                // the time-part of compared DateTime objects.
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(_selectedDay, selectedDay)) {
                  // Call `setState()` when updating the selected day
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                }
              },
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  // Call `setState()` when updating calendar format
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                // No need to call `setState()` here
                _focusedDay = focusedDay;
              },
              calendarStyle: CalendarStyle(
                selectedDecoration: BoxDecoration(
                  color: CustomColors.primaryMaroon,
                  shape: BoxShape.circle,
                ),
                todayDecoration: BoxDecoration(
                  color: CustomColors.maroonred,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            // empty container for if you want to add any text
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: const [
                        // Text(
                        //   "UPCOMING EVENTS",
                        //   //add line
                        //   style: TextStyle(
                        //       fontSize: 15.0,
                        //       fontWeight: FontWeight.w400,
                        //       letterSpacing: 0.7),
                        // ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 7.5,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SizedBox(
                      height: 50,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        // time buttons
                        children: [
                          TimeButton(
                            label: '12:00',
                            isSelected: _selectedIndex == 0,
                            onSelectionChanged: (isSelected) {
                              _handleTimeButtonPressed(
                                  0); //0 is the index and you can see the button code in buttons folder
                            },
                          ),
                          TimeButton(
                            label: '12:45',
                            isSelected: _selectedIndex == 1,
                            onSelectionChanged: (isSelected) {
                              _handleTimeButtonPressed(
                                  1); //1 is the index and you can see the button code in buttons folder
                            },
                          ),
                          TimeButton(
                            label: '13:30',
                            isSelected: _selectedIndex == 2,
                            onSelectionChanged: (isSelected) {
                              _handleTimeButtonPressed(
                                  2); //2 is the index and you can see the button code in buttons folder
                            },
                          ),
                          TimeButton(
                            label: '14:15',
                            isSelected: _selectedIndex == 3,
                            onSelectionChanged: (isSelected) {
                              _handleTimeButtonPressed(
                                  3); //3 is the index and you can see the button code in buttons folder
                            },
                          ),
                          TimeButton(
                            label: '15:00',
                            isSelected: _selectedIndex == 4,
                            onSelectionChanged: (isSelected) {
                              _handleTimeButtonPressed(
                                  4); //4 is the index and you can see the button code in buttons folder
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  // note text field, store text in database
                  const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      // center the prefix icon anf label text
                      prefixIcon: Icon(Icons.menu_book_outlined),
                      labelText: "Leave a note(Optional)",
                      labelStyle: TextStyle(
                        color: CustomColors.disableGrey,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  // agent buttons (if you want to add more agents, just copy paste the code below and change the index)
                  Container(
                    color: CustomColors.shadowGrey,
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SizedBox(
                      height: 110,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(
                              width:
                                  7.0), // Adds space at start of the Agent Buttons
                          Column(
                            children: [
                              SizedBox(
                                  height: 5.0), // Adds space above the button
                              AgentButton(
                                label: 'John Doe',
                                isSelected: _selectedAgentIndex == 0,
                                onSelectionChanged: (isSelected) {
                                  _handleAgentButtonPressed(
                                      0); //0 is the index and you can see the button code in buttons folder
                                },
                              ),
                            ],
                          ),
                          // SizedBox(width: 10.0),
                          Column(
                            children: [
                              SizedBox(height: 5.0),
                              AgentButton(
                                label: 'Jane Doe',
                                isSelected: _selectedAgentIndex == 1,
                                onSelectionChanged: (isSelected) {
                                  _handleAgentButtonPressed(
                                      1); //1 is the index and you can see the button code in buttons folder
                                },
                              ),
                            ],
                          ),
                          // SizedBox(width: 10.0),
                          Column(
                            children: [
                              SizedBox(height: 5.0),
                              AgentButton(
                                label: 'Bob Smith',
                                isSelected: _selectedAgentIndex == 2,
                                onSelectionChanged: (isSelected) {
                                  _handleAgentButtonPressed(
                                      2); //2 is the index and you can see the button code in buttons folder
                                },
                              ),
                            ],
                          ),
                          // SizedBox(width: 10.0),
                          Column(
                            children: [
                              SizedBox(height: 5.0),
                              AgentButton(
                                label: 'Sara Johnson',
                                isSelected: _selectedAgentIndex == 3,
                                onSelectionChanged: (isSelected) {
                                  _handleAgentButtonPressed(
                                      3); //3 is the index and you can see the button code in buttons folder
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  // /bottom booking confirmation
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 7.5, 5),
                    child: SizedBox(
                      width: 500.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFFFFFF),
                          elevation: 5,
                          padding: EdgeInsets.all(10.0),
                        ),
                        onPressed: () {
                          // you can add a function here to store the data in the database
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "N5000",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF000000),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  "+ taxes/fee",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF373C43),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "45 min",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF000000),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF000000),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                padding: EdgeInsets.zero,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        AppointmentBookedScreen()));

                                // add function to store in database
                                // For me
                                //TODO: write navigation here.
                              },
                              child: Container(
                                width: 100,
                                height: 40,
                                child: Center(
                                  child: Text(
                                    "Book Now",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
