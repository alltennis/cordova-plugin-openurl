#import "OpenURL.h"

@implementation OpenURL
//@implementation AppDelegate

- (void)open:(CDVInvokedUrlCommand *)command {
  NSString *url = [command.arguments objectAtIndex:0];

  if (url == nil || [url length] == 0) {
    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"No URL specified"];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    return;
  }

  NSString *openAppSetting = @"UIApplicationOpenSettingsURLString";
  BOOL result = NO;  

  if ([url isEqualToString:openAppSetting])
  {
     if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]])
     {   
         result = [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];
     }
  }
  else
  {
     if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:url]])
     {
         result = [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];   
     }
  }
  
  if (!result) {
    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Unable to open URL"];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    return;
  }

  CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:url];
  [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
