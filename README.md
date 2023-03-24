# /!\ Beta - TCServerSide Flutter plugin

A beta version of Commanders Act's TCServerSide mobile lib

## Getting Started

This is a beta release, which means that the software is still in development and may contain bugs, errors, or other issues that could affect its performance or reliability. We recommend that you use this software for testing and evaluation purposes only, and not in a production environment or for critical workloads.


While we have made every effort to ensure the quality and stability of this beta release, we cannot guarantee that it will work perfectly in every situation. If you encounter any issues or have any feedback, please report them to us so that we can improve the software for future releases.

It is important to have a look on both [Android](https://github.com/CommandersAct/AndroidV5/tree/master/TCServerSide) and [IOS](https://github.com/CommandersAct/iosv5/tree/master/TCServerSide) documentation to understand the basic functionning of the library. 

## Installation 

We'll be releasing this plugin on pub.dev once beta phase is terminated. as for now, you'll need to set a git dependency. 

On your pubspec.yaml, set : 

```
dependencies:

  tc_serverside_plugin:
    git:
      url: https://github.com/CommandersAct/tcserverside-plugin.git
      ref: master
```

Use branch `with_idfa` if you need IDFA in your ios hits.

```
dependencies:

  tc_serverside_plugin:
    git:
      url: https://github.com/CommandersAct/tcserverside-plugin.git
      ref: with_idfa
```

### [iOS only] manually linking TCCore :

Flutter doesn't currently fully support SPM dependency, you'll need to manually link our TCCore.xcframework to both your tc_* plugin target that you are using).

More info here :   

[xcframework Linking](https://github.com/CommandersAct/TCMobileDemo-flutter/blob/master/xcframework_linking.md)

## Usage : 

Simillar to Android and iOS SDKs, you'll need to create a ServerSide() instance and initialise it with your personal `siteID` and `source_key`.

As for TCDevice and other classes, porting them is currently in development, this repo will be updated ASAP.

Please have a look on `lib/tc_serverside.dart`  & `example/lib/main.dart` for more info. 

An example code will look like : 

```
  TCServerside serverside = TCServerside();
  serverside.initServerSide(3311, "sourceKey");
  serverside.execute(TCPageViewEvent());
```

A full example is available [Here](https://github.com/CommandersAct/TCMobileDemo-flutter) folder.
