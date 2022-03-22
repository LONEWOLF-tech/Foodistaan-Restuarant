import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:foodistaan_restuarant/constants.dart';
import 'package:foodistaan_restuarant/functions/order_functions.dart';
import 'package:sizer/sizer.dart';

class OrderReadyWidget extends StatefulWidget {
  var orderData;
  OrderReadyWidget({required this.orderData});

  @override
  _OrderReadyWidgetState createState() => _OrderReadyWidgetState();
}

class _OrderReadyWidgetState extends State<OrderReadyWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 1.h, bottom: 1.5.h),
        margin:
            EdgeInsets.only(top: 1.h, left: 2.5.w, right: 2.5.w, bottom: 1.h),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 1.5.h, right: 1.5.h),
              height: MediaQuery.of(context).size.height * 0.04,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.orderData!['order-id'],
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      )),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Row(
                      children: [
                        Text(
                          OrderFunctions().orderTime(widget.orderData!['time']),
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        Icon(
                          Icons.more_vert,
                          size: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 1.5.h, right: 1.5.h),
              child: Row(
                children: [
                  Container(
                      // padding: EdgeInsets.all(0.8.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.h),
                        color: kGreenTag,
                      ),
                      height: 4.h,
                      child: MaterialButton(
                          elevation: 5,
                          onPressed: null,
                          child: Text(
                            'Ready For Pickup',
                            style: TextStyle(color: Colors.white),
                          ))),
                  // Container(
                  //   margin: EdgeInsets.only(
                  //     left: MediaQuery.of(context).size.height * 0.02,
                  //   ),
                  //   child: Text(
                  //     "Sameer's 10th order",
                  //     style: TextStyle(fontSize: 10, color: Colors.teal),
                  //   ),
                  // )
                ],
              ),
            ),
            Divider(
              thickness: 0.1.h,
              color: kYellow,
            ),
            Container(
                margin: EdgeInsets.only(left: 1.5.h, right: 1.5.h),
                alignment: Alignment.centerLeft,
                height: MediaQuery.of(context).size.height * 0.07,
                child: OrderFunctions().itemsList(widget.orderData!['items'])),
            Divider(
              thickness: 0.1.h,
            ),
            Container(
                margin: EdgeInsets.only(left: 1.h, right: 1.h),
                alignment: Alignment.centerLeft,
                child: Text("Total bill : ₹${widget.orderData['total-bill']}",
                    style: TextStyle(fontSize: 12.sp))),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kRed,
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              child: MaterialButton(
                elevation: 5,
                onPressed: () async {
                  await OrderFunctions()
                      .setOrderPicked(widget.orderData!['order-id']);
                },
                child: Text(
                  "ORDER PickedUp?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
