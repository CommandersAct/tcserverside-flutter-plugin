import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:tc_serverside_plugin/TCApp.dart';
import 'package:tc_serverside_plugin/TCDevice.dart';
import 'package:tccore_plugin/TCUser.dart';
import 'package:tc_serverside_plugin/events/TCPageViewEvent.dart';
import 'package:tc_serverside_plugin/tc_serverside.dart';
import 'package:tccore_plugin/TCDebug.dart';
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
                    buildTextButton('setDebugLevel : TCLogLevel_None', () => {TCDebug().setDebugLevel(TCLogLevel.TCLogLevel_None)}),
                    buildTextButton('setDebugLevel : TCLogLevel_Verbose', () => {TCDebug().setDebugLevel(TCLogLevel.TCLogLevel_Verbose)}),
                    buildTextButton('areHitBlocked ', () async => {print(await TCDebug().areHitBlocked())}),
                    buildTextButton('blockHits ', () => {print(TCDebug().blockHits(true))}),
                    buildTextButton('do not blockHits ', () => {print(TCDebug().blockHits(false))}),
                    buildTextButton('enablePrettyFormat ', () => {print(TCDebug().enablePrettyFormat(true))}),
                    buildTextButton('enableServerSide', () => {serverside.enableServerSide()}),
                    buildTextButton('disableServerSide', () => {serverside.disableServerSide()}),
                    buildTextButton('init TCServerSide', () => {serverside.initServerSide(3311, "source_key")} ),
                    buildTextButton('PageViewEvent', () => {serverside.execute(MockEvents.makeMockTCPageViewEvent())}),
                    buildTextButton('TCAddPaymentInfoEvent', () => {serverside.execute(MockEvents.makeMockTCAddPaymentInfoEvent())}),
                    buildTextButton('addPermanentData', () => {serverside.addPermanentData("permanant_data_key", "permanant_value")}),
                    buildTextButton('enableRunningInBackground', () => {serverside.enableRunningInBackground()}),
                    buildTextButton('getPermanentData', () async => {print(" *- permanant data = ${await serverside.getPermanentData("permanant_data_key")}")}),
                    buildTextButton('removePermanentData', () async => {print(" *- removed data = ${await serverside.removePermanentData("permanant_data_key")}")}),
                    buildTextButton('addAdvertisingID', () => {serverside.addAdvertisingID()}),
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
