import 'package:flutter/material.dart';
import 'package:funkyboys_boutique/Constant/Color/color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

class RentDetails extends StatefulWidget {
  const RentDetails({Key? key}) : super(key: key);

  @override
  State<RentDetails> createState() => _RentDetailsState();
}

class _RentDetailsState extends State<RentDetails> {

  int _value = 1;

  TextEditingController _date = TextEditingController();

  int count = 0;
  void _incrementCount() {
    setState((){
      count++;
    });
  }
  void _decrementCount() {
    setState((){
      if (count > 0) count--;
    });
  }
  TextEditingController date = TextEditingController();

  @override
  Widget build(BuildContext context) {

    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: PowderBlue,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: H*0.1),
                child: Container(
                  alignment: AlignmentDirectional.bottomCenter,
                  decoration: BoxDecoration(
                      color: AliceBlue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        SizedBox(
                          height: H*0.2,
                        ),
                        Text("Radiology",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Gilroy-Bold",
                              fontWeight: FontWeight.bold,
                              color: IndigoDye,
                              decoration: TextDecoration.none
                          ),
                        ),
                        SizedBox(
                          height: H*0.02,
                        ),
                        Text("magni dolores eos qui ratione voluptatem sequi nesciunt.Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Gilroy-Regular",
                              fontWeight: FontWeight.w300,
                              color: PurpleNavy,
                              decoration: TextDecoration.none
                          ),
                        ),
                        SizedBox(
                          height: H*0.02,
                        ),
                        Text("magni dolores eos qui ratione voluptatem sequi nesciunt.Neque porro quisquam est, qui",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Gilroy-Regular",
                              fontWeight: FontWeight.w300,
                              color: PurpleNavy,
                              decoration: TextDecoration.none
                          ),
                        ),
                        SizedBox(
                          height: H*0.03,
                        ),
                        Text("Price:",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Gilroy-SemiBold",
                              fontWeight: FontWeight.w500,
                              color: BleuDeFrance,
                              decoration: TextDecoration.none
                          ),
                        ),
                        Text("\$80.00",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Gilroy-SemiBold",
                              fontWeight: FontWeight.w500,
                              color: PurpleNavy,
                              decoration: TextDecoration.none
                          ),
                        ),
                        SizedBox(
                          height: H*0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Date:",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Gilroy-Bold",
                                decoration: TextDecoration.none,
                                color: IndigoDye,
                              ),),
                            Container(
                              height: H*0.075,
                              width: W*0.65,
                              child: TextFormField(
                                readOnly: true,
                                style: TextStyle(
                                  height: H*0.0015,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Gilroy-Regular",
                                  color: Color(0xff4A4979)
                                ),
                                onTap: () async{
                                  DateTime? pickeddate = await showDatePicker(context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1947),
                                      lastDate: DateTime(2099));
                                  if(pickeddate != null){
                                    setState((){
                                      date.text = DateFormat('dd/MMM/yyyy').format(pickeddate);
                                    });
                                  }
                                },
                                controller: date,
                                decoration: InputDecoration(
                                  hintText: "Select Date",
                                    hintStyle: TextStyle(
                                      fontFamily: "Gilroy-SemiBold",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xff4A4979),
                                    ),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 16),
                                      child: SvgPicture.asset("assets/images/Calender.svg"),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(32)
                                        )
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(32)
                                        )
                                    )
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: H*0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Prd type:",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Gilroy-Bold",
                                decoration: TextDecoration.none,
                                color: Color(0xff184673),
                              ),),
                            SizedBox(
                              width: W*0.02,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 18,
                                  width: 18,
                                  child: Radio(value: 1, groupValue: _value, onChanged: (value){
                                    setState(() {
                                      _value = 1;
                                    });
                                  }),
                                ),
                                SizedBox(
                                  width: W*0.01,
                                ),
                                Text("Commercial",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Gilroy-SemiBold",
                                    decoration: TextDecoration.none,
                                    color: Color(0xff4A4979),
                                  ),),
                                SizedBox(
                                  width: W*0.02,
                                ),
                                Container(
                                  height: 18,
                                  width: 18,
                                  child: Radio(value: 2, groupValue: _value, onChanged: (value){
                                    setState(() {
                                      _value = 2;
                                    });
                                  }),
                                ),
                                SizedBox(
                                  width: W*0.01,
                                ),
                                Text("Recreational",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Gilroy-SemiBold",
                                    decoration: TextDecoration.none,
                                    color: Color(0xff4A4979),
                                  ),),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: H*0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Quantity:",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Gilroy-Bold",
                                decoration: TextDecoration.none,
                                color: Color(0xff184673),
                              ),),
                            SizedBox(
                              width: W*0.075,
                            ),
                            Container(
                              height: H*0.04,
                              child: FloatingActionButton(
                                elevation: 0,
                                backgroundColor: Colors.white,
                                onPressed:_decrementCount,
                                child: Icon(Icons.remove,
                                    color: Color(0xff4A4979),size: W*0.05),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: H*0.06,
                              width: W*0.12,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                                )
                              ),
                              child: Text("${count}",
                              style: TextStyle(
                                height: H*0.00225,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Gilroy-SemiBold",
                                decoration: TextDecoration.none,
                                color: Color(0xff4A4979)
                              ),)),
                            Container(
                              height: H*0.04,
                              child: FloatingActionButton(
                                elevation: 0,
                                backgroundColor: Colors.white,
                                onPressed: _incrementCount,
                                child: Icon(Icons.add,
                                    color: Color(0xff4A4979),size: W*0.05),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: H*0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height:H*0.075,
                              width: W*0.4,
                              decoration: BoxDecoration(
                                boxShadow: [BoxShadow(
                                  color: Color(0xffBBC9D3),
                                  blurRadius: 10,
                                  offset: Offset(0,7.5)
                                )],
                                  borderRadius: BorderRadius.all(Radius.circular(32)),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff0581D7),
                                      Color(0xff1463D4),
                                    ],
                                  )
                              ),
                              child: Text("Add to Cart",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Gilroy-Bold",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    decoration: TextDecoration.none,
                                    color: Colors.white
                                ),),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height:H*0.075,
                              width: W*0.4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(32)),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffD1D0F1),
                                      Color(0xffBDBCE4),
                                    ],
                                  )
                              ),
                              child: Text("Buy Now",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Gilroy-Bold",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    decoration: TextDecoration.none,
                                    color: Colors.white
                                ),),
                            )
                          ],
                        ),
                        SizedBox(
                          height: H*0.06,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      offset: Offset(0,0.5),
                      color: Color(0xffD7E6F0),
                      blurRadius: 10
                    )],
                    color: Color(0xff2A8FEA),
                    border: Border.all(
                      color: Colors.white,
                      width: 7.5
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16)
                    )
                  ),
                  height: H*0.2,
                  width: W*0.4,
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
