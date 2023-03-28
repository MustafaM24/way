import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/common/chips/custom_choice_chips.dart';
import 'package:way/style/colors.dart';
import 'package:intl/intl.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  final List<String> period = ["Daily", "Weekly", "Monthly", "Yearly"];

  DateTime date = DateTime.now();

// TODO: This method gives the value of selected period from the list above.
  selectedChip(value) {
    print(value);
  }

// This method handles the change in date
  dateSelector() async {
    DateTime? newDate = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(2022),
        lastDate: DateTime(2050));
    if (newDate == null) return;
    setState(() => date = newDate);
  }

  //write accpet logic in method below
  acceptPressed() {
    print("accept");
  }

  //write decline logic in method below
  declinePressed() {
    print("decline");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: MediaQuery.of(context).size.height / 9,
            collapsedHeight: MediaQuery.of(context).size.height / 9,
            pinned: true,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            flexibleSpace: Column(
              children: [
                CustomChoiceChips(
                  chips: period,
                  selectedChip: selectedChip,
                  fixedWidth: true,
                ),
                const SizedBox(height: 8),
                GestureDetector(
                  onTap: () => dateSelector(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        "${date.day} ${DateFormat('MMMM').format(date)} ${date.year}",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(width: 12),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => Row(children: [
                        Container(
                            height: MediaQuery.of(context).size.height / 5,
                            width: MediaQuery.of(context).size.width / 5,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: const BorderSide(
                                        color: CustomColors.dividerGrey),
                                    top: (index == 0)
                                        ? const BorderSide(
                                            color: CustomColors.dividerGrey)
                                        : BorderSide.none,
                                    right: const BorderSide(
                                        color: CustomColors.dividerGrey))),
                            child: const Text("9:00AM")),
                        SizedBox(
                          height: 160.0,
                          width: MediaQuery.of(context).size.width / 1.28,
                          child: ListView.builder(
                            padding: const EdgeInsets.only(left: 6),
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return AppointmentCard(
                                onAccept: acceptPressed,
                                onDecline: declinePressed,
                              );
                            },
                          ),
                        ),
                      ]),
                  childCount: 5))
        ],
      ),
    );
  }
}

//helper widget
class AppointmentCard extends StatelessWidget {
  final Function onAccept;
  final Function onDecline;
  const AppointmentCard(
      {super.key, required this.onAccept, required this.onDecline});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.3,
      child: Card(
        elevation: 2.4,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(children: [
            const Text("ClientName"),
            Text(
              "Haircut",
              style:
                  Theme.of(context).textTheme.labelLarge?.copyWith(height: 1.4),
            ),
            const Text("EmployeeName"),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PrimaryButton(
                  // vertPadding: 5,
                  // horizPadding: 5,
                  title: 'Decline',
                  onTap: () {
                    // TODO: Implement save functionality
                  },
                  color: const Color.fromARGB(209, 244, 67, 54),
                  height: 48,
                  width: 102, //MediaQuery.of(context).size.width / 1.2,
                ),
                // PrimaryButton(
                //   width: 96,
                //   height: 48,
                //   title: "Decline",
                //   onTap: () => onDecline(),
                //   color: const Color.fromARGB(209, 244, 67, 54),
                // ),
                PrimaryButton(
                  width: 102,
                  height: 48,
                  title: "Accept",
                  onTap: () => onAccept(),
                  color: CustomColors.green,
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
