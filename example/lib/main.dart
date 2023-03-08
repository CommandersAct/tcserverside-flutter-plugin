import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:tc_serverside_plugin/events/TCBeginCheckoutEvent.dart';
import 'package:tc_serverside_plugin/events/TCPageViewEvent.dart';
import 'package:tc_serverside_plugin/tc_serverside.dart';

import 'MockEvents.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TCServerside serverside = TCServerside();

  @override
  void initState() {
    super.initState();
    serverside.initServerSide(3311, "sourceKey");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body:Container(
          child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildTextButton('addPermanentData', () => {serverside.addPermanentData("permanant_data_key", "permanant_value")}),
                    buildTextButton('enableRunningInBackground', () => {serverside.enableRunningInBackground()}),
                    buildTextButton('getPermanentData', () async => {print(" *- permanant data = ${await serverside.getPermanentData("permanant_data_key")}")}),
                    buildTextButton('removePermanentData', () async => {print(" *- removed data = ${await serverside.removePermanentData("permanant_data_key")}")}),
                    buildTextButton('addAdvertisingID', () => {serverside.addAdvertisingID()}),
                    buildTextButton('PageViewEvent', () => {serverside.execute(MockEvents.makeMockTCPageViewEvent())}),
                    buildTextButton('TCPurchaseEvent', () => {serverside.execute(MockEvents.makeMockTCPurchaseEvent())}),
                    buildTextButton('TCAddShippingInfoEvent', () => {serverside.execute(MockEvents.makeTCAddShippingInfoEvent())}),
                    buildTextButton('TCAddPaymentInfoEvent', () => {serverside.execute(MockEvents.makeMockTCAddPaymentInfoEvent())}),
                    buildTextButton('TCAddToCartEvent', () => {serverside.execute(MockEvents.makeMockTCAddToCartEvent())}),
                    buildTextButton('TCAddToWishlistEvent', () => {serverside.execute(MockEvents.makeMockTCAddToWishlistEvent())}),
                    buildTextButton('TCRefundEvent', () => {serverside.execute(MockEvents.makeMockTCRefundEvent())}),
                    buildTextButton('TCRemoveFromCartEvent', () => {serverside.execute(MockEvents.makeMockTCRemoveFromCartEvent())}),
                    buildTextButton('TCBeginCheckoutEvent', () => {serverside.execute(MockEvents.makeMockTCBeginCheckoutEvent())}),
                    buildTextButton('TCViewCartEvent', () => {serverside.execute(MockEvents.makeMockTCViewCartEvent())}),
                    buildTextButton('TCViewItem', () => {serverside.execute(MockEvents.makeMockTCViewItem())}),
                    buildTextButton('TCCustomEvent', () => {serverside.execute(MockEvents.makeMockTCCustomEvent())}),
                    buildTextButton('TCSelectContentEvent', () => {serverside.execute(MockEvents.makeMockTCSelectContentEvent())}),
                    buildTextButton('TCSignUpEvent', () => {serverside.execute(MockEvents.makeMockTCSignUpEvent())}),
                    buildTextButton('TCSearchEvent', () => {serverside.execute(MockEvents.makeMockTCSearchEvent())}),
                    buildTextButton('TCLoginEvent', () => {serverside.execute(MockEvents.makeMockTCLoginEvent())}),
                    buildTextButton('TCGenerateLeadEvent', () => {serverside.execute(MockEvents.makeMockTCGenerateLeadEvent())}),
                    buildTextButton('TCSelectItemEvent', () => {serverside.execute(MockEvents.makeMockTCSelectItemEvent())}),
                    buildTextButton('TCViewItemListEvent', () => {serverside.execute(MockEvents.makeMockTCViewItemListEvent())}),
                      ],
                ),
              )
          ),
        )
        ,
      ),
    );
  }

  Container buildTextButton(String label, Function() f) {
    return     Container(
        margin: const EdgeInsets.only(top: 10.0, right: 34, left: 34),
        child : ElevatedButton(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                minimumSize: const Size.fromHeight(50)),
            onPressed: () {f();},
            child: Text(
              label, style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,

            )));
  }
}
