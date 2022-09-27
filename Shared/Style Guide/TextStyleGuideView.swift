import SwiftUI

fileprivate struct TextStyleGuideView: ResponsiveView {
    var resources: ResponsiveResources {
        ResponsiveResources(sizeClass: horizontalSizeClass)
    }
    
    @Environment(\.horizontalSizeClass)
    var horizontalSizeClass
    
    var body: some View {
        VStack {
            Group {
                Text("Page Title")
                    .font(resources.pageTitleFont)
                Text("Page Subtitle")
                    .font(resources.pageSubtitleFont)
                Text("Heading")
                    .font(resources.headingFont)
                Text("Subtitle")
                    .font(resources.subtitleFont)
                Text("Label")
                    .font(resources.labelFont)
                Text("Label Medium")
                    .font(resources.labelMediumFont)
            }
            Group {
                Text("Label Small")
                    .font(resources.labelSmallFont)
                Text("Label Extra Small")
                    .font(resources.labelExtraSmallFont)
                Text("Button Label")
                    .font(resources.buttonLabelFont)
                Text("Cell Title")
                    .font(resources.cellTitleFont)
                Text("Hightlight")
                    .font(resources.highlightFont)
                Text("Hightlight Extra Small")
                    .font(resources.highlightExtraSmallFont)
            }
        }
            
    }
}

struct TextStyleGuideView_Previews: PreviewProvider {
    static var previews: some View {
        TextStyleGuideView()
    }
}
