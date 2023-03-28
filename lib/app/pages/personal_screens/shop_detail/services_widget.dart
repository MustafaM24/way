import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/app/model/shop_service_model.dart';
import 'package:way/router/router.dart';
import 'package:way/style/colors.dart';

class ServicesWidget extends StatelessWidget {
  ServicesWidget({super.key});

  //TODO: This is a custom services list of ShopServiceModel, use this model to populate list from backend
  List<ShopServiceModel> services = [
    ShopServiceModel(serviceName: "Haircut", serialNo: "5000", time: "40"),
    ShopServiceModel(serviceName: "Haircut", serialNo: "5000", time: "40"),
    ShopServiceModel(serviceName: "Haircut", serialNo: "5000", time: "40"),
    ShopServiceModel(serviceName: "Haircut", serialNo: "5000", time: "40")
  ];

  bookTapHandler() {
    //TODO: write book navigation here
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: services.length,
      itemBuilder: (context, index) => Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                services[index].serviceName,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
              Column(
                children: [
                  Text(
                    "#${services[index].serialNo}",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text("${services[index].time}m"),
                ],
              ),
              PrimaryButton(
                title: "Book",
                onTap: () => Navigator.pushNamed(context, bookAppointment),
                width: 80,
                color: CustomColors.secondaryblack,
              )
            ],
          ),
        ),
      ),
    );
  }
}
