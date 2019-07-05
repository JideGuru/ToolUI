#import "ToolUiPlugin.h"
#import <tool_ui/tool_ui-Swift.h>

@implementation ToolUiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftToolUiPlugin registerWithRegistrar:registrar];
}
@end
