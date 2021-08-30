import 'package:flutter/material.dart';
import 'package:promdi_fe/helpers/style.dart';
import 'package:promdi_fe/screens/e_commerce/payment.dart';
import 'package:promdi_fe/widgets/custom_button.dart';
import 'package:promdi_fe/widgets/text_decoration.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

late String applepay, visa;

class _CheckOutPageState extends State<CheckOutPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Container(
        color: light,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Destination'),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Cecilia chapman 711-2280 Nulla St.'),
                      Text('Manakato Mississippi 96522.'),
                      Text('255 553-7652')
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.watch),
                              Text('Fri, Jun 17,2020-12.30'),
                              SizedBox(
                                width: size.width * 0.25,
                              ),
                              Icon(Icons.skip_next)
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Icon(Icons.watch_rounded),
                              Text('Pick Up Time 30-40 Min'),
                              SizedBox(
                                width: size.width * 0.25,
                              ),
                              Icon(Icons.skip_next)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Total'),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total'),
                            Text('0.78'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Payment Method'),
                    ),
                    TextFormField(
                      enabled: false,
                      autofocus: false,
                      validator: (value) => value!.isEmpty ? 'ApplePay' : null,
                      onSaved: (value) => applepay = value!,
                      decoration: buildInputDecoration(
                        'Apple Pay',
                        Icons.card_giftcard,
                      ),
                    ),
                    TextFormField(
                      enabled: false,
                      autofocus: false,
                      validator: (value) => value!.isEmpty ? 'Visa' : null,
                      onSaved: (value) => visa = value!,
                      decoration: buildInputDecoration(
                        'Visa ***586',
                        Icons.card_giftcard,
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          width: 2.0,
                          color: greenCustom,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Payment()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Add payment method',
                          style: TextStyle(
                            color: dark,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Promo Code'),
                    ),
                    Card(
                      child: Row(
                        children: [
                          Icon(Icons.badge),
                          SizedBox(
                            width: size.width * 0.08,
                          ),
                          Text('Add Promo Code'),
                          SizedBox(
                            width: size.width * 0.25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Payment()));
                              },
                              icon: Icon(Icons.skip_next),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CustomButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Payment()));
                        },
                        title: 'Place Order',
                        customcolor: greenCustom,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
