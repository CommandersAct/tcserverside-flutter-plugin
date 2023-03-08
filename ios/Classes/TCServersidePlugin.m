#import "TCServersidePlugin.h"
#import <TCCore/TCAdditionalProperties.h>
#import "TCEventParser.h"

@interface TCServersidePlugin ()

@property (nonatomic, retain) FlutterMethodChannel* channel;
@property (nonatomic, retain) ServerSide* serverSide;
@property (nonatomic, retain) TCEventParser* parser;

@end

@implementation TCServersidePlugin

- (instancetype) init
{
    self = [super init];
    if (self)
    {
        self.parser = [[TCEventParser alloc] init];
    }
    return self;
}

+ (void) registerWithRegistrar: (NSObject<FlutterPluginRegistrar>*) registrar
{
    TCServersidePlugin* instance = [[TCServersidePlugin alloc] init];
    instance.channel = [FlutterMethodChannel methodChannelWithName: @"tc_serverside_flutter_plugin" binaryMessenger: [registrar messenger]];
    [registrar addMethodCallDelegate: instance channel: instance.channel];
}


- (void) handleMethodCall: (FlutterMethodCall*) call result: (FlutterResult) result
{
    if ([@"initServerSide" isEqualToString: call.method])
    {
        ETCConsentBehaviour defaultBehavior = [self evaluateState: call.arguments[@"defaultBehavior"]];
        self.serverSide = [[ServerSide alloc] initWithSiteID: [call.arguments[@"site_id"] intValue] andSourceKey: call.arguments[@"source_key"] andDefaultBehaviour: defaultBehavior];
        result(nil);
    }
    else if ([@"execute" isEqualToString: call.method])
    {
        TCEvent *event = [self.parser parseEvent: call.arguments[@"event"] withName: call.arguments[@"name"]];
        [self.serverSide execute: event];
        result(nil);
    }
    else if ([@"enableRunningInBackground" isEqualToString: call.method])
    {
        [self.serverSide enableRunningInBackground];
        result(nil);
    }
    else if ([@"addPermanentData" isEqualToString: call.method])
    {
        [self.serverSide addPermanentData: call.arguments[@"key"] withValue: call.arguments[@"value"]];
        result(nil);
    }
    else if ([@"getPermanentData" isEqualToString: call.method])
    {
        result([self.serverSide getPermanentData: call.arguments[@"key"]]);
    }
    else if ([@"removePermanentData" isEqualToString: call.method])
    {
        result([self.serverSide removePermanentData: call.arguments[@"key"]]);
    }
    else if ([@"addAdvertisingID" isEqualToString: call.method])
    {
        [self.serverSide addAdvertisingIDs];
        result(nil);
    }
    else
    {
        result(FlutterMethodNotImplemented);
    }
}

- (enum ETCConsentBehaviour) evaluateState: (NSString *) stringValue
{
    if (stringValue != nil && [stringValue length] > 0)
    {
        if ([stringValue isEqualToString: @"ETCConsentBehaviour.PB_ALWAYS_ENABLED"])
        {
            return PB_ALWAYS_ENABLED;
        }
        else if ([stringValue isEqualToString: @"ETCConsentBehaviour.PB_DISABLED_BY_DEFAULT"])
        {
            return PB_DISABLED_BY_DEFAULT;
        }
    }

    return PB_DEFAULT_BEHAVIOUR;
}

@end
