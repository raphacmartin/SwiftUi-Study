import CoreGraphics
import SwiftUI

extension CGFloat {
    // MARK: View sizes
    public static func headerHeight(for sizeClass: UserInterfaceSizeClass?) -> CGFloat {
        if sizeClass == .regular {
            return 180.0
        } else {
            return 140.0
        }
    }
    public static func cellImageHeight(for sizeClass: UserInterfaceSizeClass?) -> CGFloat {
        if sizeClass == .regular {
            return 200.0
        } else {
            return 125.0
        }
    }
    
    // MARK: Font Sizes
    public static func fontSizeMedium(for sizeClass: UserInterfaceSizeClass?) -> CGFloat {
        if sizeClass == .regular {
            return 30.0
        } else {
            return 20.0
        }
    }
    public static func fontSizeRegular(for sizeClass: UserInterfaceSizeClass?) -> CGFloat {
        if sizeClass == .regular {
            return 24.0
        } else {
            return 17.0
        }
    }
    
    // MARK: Button sizes
    public static func buttonWidth(for sizeClass: UserInterfaceSizeClass?) -> CGFloat {
        if sizeClass == .regular {
            return 150.0
        } else {
            return 100.0
        }
    }
    public static func buttonHeight(for sizeClass: UserInterfaceSizeClass?) -> CGFloat {
        if sizeClass == .regular {
            return 75.0
        } else {
            return 50.0
        }
    }
    // The offset will be always the half of the button height and negative because the offset should "pull" the button up, not push down
    public static func buttonOffset(for sizeClass: UserInterfaceSizeClass?) -> CGFloat {
        return -(.buttonHeight(for: sizeClass) / 2)
    }
    
}
