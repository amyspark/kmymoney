#import <AppKit/AppKit.h>

#include <QString>

bool applyIconToFolder(const QString &folder, const QString &icns) {
    const auto imageData = [[NSImage alloc] initWithContentsOfFile:icns.toNSString()];
    if (imageData == nullptr)
        return false;

    return [[NSWorkspace sharedWorkspace] setIcon:imageData forFile: folder.toNSString() options:NSExcludeQuickDrawElementsIconCreationOption];
}
