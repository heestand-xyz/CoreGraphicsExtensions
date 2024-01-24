import CoreGraphics

extension CGSize {
    
    public enum Placement {
        case stretch
        case fit
        case fill
        case fixed
    }
    
    public func place(in resolution: CGSize, placement: Placement, roundToPixels: Bool = true) -> CGSize {
       
        var resolution: CGSize = {
            switch placement {
            case .fit:
                return CGSize(width: width / resolution.width > height / resolution.height ? resolution.width : width * (resolution.height / height),
                              height: width / resolution.width < height / resolution.height ? resolution.height : height * (resolution.width / width))
            case .fill:
                return CGSize(width: width / resolution.width < height / resolution.height ? resolution.width : width * (resolution.height / height),
                              height: width / resolution.width > height / resolution.height ? resolution.height : height * (resolution.width / width))
            case .fixed:
                return self
            case .stretch:
                return resolution
            }
        }()
        
        if roundToPixels {
            resolution = CGSize(width: round(resolution.width),
                                height: round(resolution.height))
        }
        
        return resolution
    }
}
