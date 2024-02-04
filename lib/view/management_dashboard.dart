import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practise_28/data/data.dart';
import 'package:practise_28/utils/custom_app_theme.dart';
import 'package:practise_28/utils/custom_elevated_button.dart';
import 'package:practise_28/widgets/dashboard_drawer.dart';

class ManagementDashboard extends StatelessWidget {
  const ManagementDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCustomTheme(
      title: 'Management Dashboard',
      backGroundImage: const DecorationImage(
          image: AssetImage('assets/icons/dashboard_background2.png'),
          fit: BoxFit.fill),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .7,
            width: double.infinity,
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1, crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return GridTile(
                    gridData: gridData,
                    index: index,
                  );
                }),
          ),
        ],
      ),
      floatingActionButton: const Padding(
        padding: EdgeInsets.all(14.0),
        child: CustomElevatedButton(label: 'Home'),
      ),
      drawer: const DashboardDrawer(),
    );
  }
}

class GridTile extends StatelessWidget {
  final List gridData;
  final int index;
  const GridTile({super.key, required this.gridData, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 11, right: 11, top: 12, bottom: 5),
      child: InkWell(
        radius: 12,
        onTap: gridData[index]['onTap'],
        child: Container(
          padding: const EdgeInsets.all(2),
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
              border:
                  Border.all(strokeAlign: 1.0, color: const Color(0xff707070)),
              color: const Color(0xffDCFFE8),
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                    color: Color(0xff707070),
                    blurRadius: 3,
                    spreadRadius: .1,
                    offset: Offset(0, 4))
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 8),
              CircleAvatar(
                radius: 26,
                backgroundColor: const Color(0xff707070),
                child: CircleAvatar(
                  radius: 25.5,
                  child: Image.asset(
                    gridData[index]['icon'],
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              Text(
                gridData[index]['label'],
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.montserrat(
                    fontSize: 11, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
