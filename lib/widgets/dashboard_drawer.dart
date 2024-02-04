import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 102.0),
      child: Drawer(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: const Color(0xff707070)),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Color(0xff707070),
                  blurRadius: 3,
                  spreadRadius: .1,
                  offset: Offset(0, 4))
            ],
            image: const DecorationImage(
                image: AssetImage('assets/icons/dashboard_background.png'),
                fit: BoxFit.fill),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.only(left: 26),
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, color: const Color.fromRGBO(112, 112, 112, 1)),
                  image: const DecorationImage(
                    image: AssetImage('assets/icons/drawer_header.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                height: 190,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 35,
                      child: CircleAvatar(
                        radius: 33,
                        child: Image.asset(
                          'assets/icons/user_profile.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "ACPL 2205",
                      style: GoogleFonts.montserrat(color: Colors.white),
                    ),
                    Text(
                      "Lorem ipsum",
                      style: GoogleFonts.montserrat(color: Colors.white),
                    ),
                  ],
                ),
              ),
              drawerListTile(
                  label: "APPLICATION FORM", image: 'assets/icons/icon1.png'),
              drawerListTile(
                  label: "EMPLOYMENT FORM", image: 'assets/icons/icon2.png'),
              drawerListTile(
                  label: "Lorem ipsum", image: 'assets/icons/icon3.png'),
              drawerListTile(
                  label: "Lorem ipsum", image: 'assets/icons/icon4.png'),
              drawerListTile(
                  label: "Lorem ipsum", image: 'assets/icons/icon5.png'),
              drawerListTile(
                  label: "Lorem ipsum", image: 'assets/icons/icon6.png'),
            ],
          ),
        ),
      ),
    );
  }

  InkWell drawerListTile({required String image, required String label}) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: Image.asset(image),
        title: Text(
          label,
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500, color: Colors.blue),
        ),
        // onTap: () {},
      ),
    );
  }
}
