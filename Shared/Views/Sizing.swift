import CoreGraphics

extension CGFloat {
    public static var fontSizeMedium: CGFloat {
        if Device.horizontalSizeClass == .compact {
            return 20.0
        } else {
            return 30.0
        }
    }
    public static var fontSizeRegular: CGFloat {
        if Device.horizontalSizeClass == .compact {
            return 17.0
        } else {
            return 25.0
        }
    }
}
