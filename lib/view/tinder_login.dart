import 'package:flutter/material.dart';
import 'package:responsividade/components/login_buttons.dart';

class TinderLogin extends StatelessWidget {
  const TinderLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          
          Container(
            width:
                size.width > 1200 ? size.width - size.width * .4 : size.width,
            height: size.height,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    end: Alignment.topRight,
                    begin: Alignment.bottomLeft,
                    stops: [0.0, 0.8],
                    colors: [Color(0XFFEA4A77), Color(0XFFEC7163)])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: size.width < 1200
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
              children: [
                if (size.width < 1200) SizedBox(height: size.height * .3),
                SizedBox(
                  width: size.width * .35,
                  child: Image.asset('assets/images/logo_tinder.png'),
                ),
                if (size.width < 1200) const Spacer(),
                if (size.width < 1200) ...[
                  LoginButtons(size: size),
                  SizedBox(
                    height: size.width * .1,
                  )
                ],
              ],
            ),
          ),
          if (size.width > 1200)
            SizedBox(
              width: size.width * .4,
              height: size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Image.asset(
                    'assets/images/logo_tinder_peq.png',
                    width: size.width * .1,
                  ),
                  SizedBox(
                    height: size.height * .2,
                  ),
                  SizedBox(
                    width: size.width * .25,
                    child:
                        LoginButtons(size: size, backgroundColor: Colors.black),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
