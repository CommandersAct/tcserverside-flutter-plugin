# /!\ Beta - TCServerSide Flutter plugin

A beta version of Commanders Act's TCServerSide mobile lib

## Getting Started

This is a beta release, which means that the software is still in development and may contain bugs, errors, or other issues that could affect its performance or reliability. We recommend that you use this software for testing and evaluation purposes only, and not in a production environment or for critical workloads.


While we have made every effort to ensure the quality and stability of this beta release, we cannot guarantee that it will work perfectly in every situation. If you encounter any issues or have any feedback, please report them to us so that we can improve the software for future releases.

It is important to have a look on both [Android](https://github.com/CommandersAct/AndroidV5/tree/master/TCServerSide) and [IOS](https://github.com/CommandersAct/iosv5/tree/master/TCServerSide) documentation to understand the basic functionning of the library. 

## Setup 

We'll be releasing this plugin on pub.dev once we finish our beta phase. as for now, you'll need to have a git plugin dependency. 

On your pubspec.yaml, set : 

```
dependencies:

  tc_serverside_plugin:
    git:
      url: https://github.com/CommandersAct/tcserverside-plugin.git
      ref: master
```

### iOS :
Since Flutter doesn't currently fully support SPM dependency, you'll need to manually link our TCCore.xcframework to both your `tc_serverside_plugin` target (and any other tc_* target that you are using) & your `Runner` target on xcode. 

More info here :   

[xcframework Linking](/xcframework_linking.md)

### Android : 

Make sure you're API 21 or above on your `app/build.gradle` file.  
```
     minSdkVersion 21
 
```

## Usage : 

Simillar to Android and iOS SDKs, you'll need to create a ServerSide() instance and initialise it with your personal `siteID` and `source_key`.

As for TCDevice and other classes, porting them is currently in development, this repo will be updated ASAP.

Please have a look on `lib/tc_serverside.dart` for more info. 

An example code will look like : 

```
  TCServerside serverside = TCServerside();
  serverside.initServerSide(3311, "sourceKey");
  serverside.execute(TCPageViewEvent());
```

A full example is available on [Here](https://github.com/CommandersAct/TCMobileDemo-flutter).

