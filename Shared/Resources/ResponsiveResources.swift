import SwiftUI

class ResponsiveResources {
    // MARK: Class properties
    let sizeClass: UserInterfaceSizeClass?
    
    // MARK: Initializer
    init(sizeClass: UserInterfaceSizeClass?) {
        self.sizeClass = sizeClass
    }
    
    // MARK: Fonts
    var pageTitleFont: Font { .custom(.avenirBlack, size: .fontSizeExtraLarge(for: self.sizeClass)) }
    var pageSubtitleFont: Font { .custom(.avenirBook, size: .fontSizeExtraLarge(for: self.sizeClass)) }
    var headingFont: Font { .custom(.avenirBlack, size: .fontSizeHeading(for: self.sizeClass)) }
    var subtitleFont: Font { .custom(.avenir, size: .fontSizeExtraLarge(for: self.sizeClass)) }
    
    var labelFont: Font { .custom(.avenir, size: .fontSizeLarge(for: self.sizeClass)) }
    var labelMediumFont: Font { .custom(.avenir, size: .fontSizeMedium(for: self.sizeClass)) }
    var labelSmallFont: Font { .custom(.avenir, size: .fontSizeSmall(for: self.sizeClass)) }
    var labelExtraSmallFont: Font { .custom(.avenir, size: .fontSizeExtraSmall(for: self.sizeClass)) }
    
    var buttonLabelFont: Font { .custom(.avenirMedium, size: .fontSizeLarge(for: self.sizeClass)) }
    var cellTitleFont: Font { .custom(.avenirBlack, size: .fontSizeMedium(for: self.sizeClass)) }
    var highlightFont: Font { .custom(.avenirBlack, size: .fontSizeLarge(for: self.sizeClass)) }
    var highlightExtraSmallFont: Font { .custom(.avenirBlack, size: .fontSizeExtraSmall(for: self.sizeClass)) }
}
