import 'package:flutter/material.dart';

class TrainingDetails extends StatefulWidget {
  const TrainingDetails({Key? key}) : super(key: key);

  @override
  State<TrainingDetails> createState() => _TrainingDetailsState();
}

class _TrainingDetailsState extends State<TrainingDetails> {
  @override
  Widget build(BuildContext context) {

    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffC2DFDC),
          body: Container(
            decoration: BoxDecoration(
              color: Color(0xffECF7FE),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                topLeft: Radius.circular(50)
              )
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: H*0.03,
                  ),
                  Text("Training 1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Gilroy.Bold",
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xff184673),
                    ),),
                  SizedBox(
                    height: H*0.03,
                  ),
                  Text("magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum\nquia dolor sit amet, consectetur",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Gilroy.Regular",
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Color(0xff4A4979),
                    ),),
                  SizedBox(
                    height: H*0.03,
                  ),
                  Text("magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Gilroy.Regular",
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Color(0xff4A4979),
                    ),),
                  Divider(
                    height: H*0.075,
                    color: Color(0xffC2CADB),
                    thickness: 1,
                  ),
                  Text("Videos",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Gilroy.Bold",
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xff184673),
                    ),),
                  SizedBox(
                    height: H*0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      videoContainer(H, W),
                      videoContainer(H, W),
                      videoContainer(H, W),
                    ],
                  ),
                  SizedBox(
                    height: H*0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      videoContainer(H, W),
                      videoContainer(H, W),
                      videoContainer(H, W),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }

  Container videoContainer(double H, double W) {
    return Container(
                      height: H*0.13,
                      width: W*0.26,
                      decoration: BoxDecoration(
                        color: Color(0xff0F87FF),
                        boxShadow: [BoxShadow(
                          color: Color(0xffDBE9F2),
                          blurRadius: 10,
                          offset: Offset(2.5,3.5)
                        )],
                        borderRadius: BorderRadius.all(
                          Radius.circular(16)
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 5
                        )
                      ),
                    );
  }
}
