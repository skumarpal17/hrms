import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppCustomTheme extends StatelessWidget {
  final String title;
  final Widget? body;
  final Widget? drawer;
  final PreferredSizeWidget? appBar;
  final DecorationImage? backGroundImage;
  final Widget? floatingActionButton;
  final void Function()? onTap;
  const AppCustomTheme(
      {super.key,
      required this.title,
      this.onTap,
      this.body,
      this.floatingActionButton,
      this.appBar,
      this.drawer,
      this.backGroundImage});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      drawer: drawer,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            if (scaffoldKey.currentState!.isDrawerOpen == false) {
              scaffoldKey.currentState!.openDrawer();
            } else {
              scaffoldKey.currentState!.openEndDrawer();
            }
          },
          child: const Icon(Icons.menu),
        ),
        elevation: 10,
        title: Text(
          title,
          softWrap: false,
          style: GoogleFonts.montserrat(
            letterSpacing: -.8,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff18B0B0),
      ),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color(0xff707070)),
                  image: backGroundImage,
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xff707070),
                        blurRadius: 3,
                        spreadRadius: .1,
                        offset: Offset(0, 4))
                  ]),
              child: Scaffold(
                  backgroundColor: Colors.transparent,
                  appBar: appBar,
                  body: body,
                  resizeToAvoidBottomInset: false,
                  floatingActionButtonLocation:
                      FloatingActionButtonLocation.centerFloat,
                  floatingActionButton: floatingActionButton),
            ),
          ),
        ),
      ),
    );
  }
}
