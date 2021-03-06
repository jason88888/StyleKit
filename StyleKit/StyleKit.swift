import Foundation

public class StyleKit {
    
    let stylist: Stylist
    
    public init?(fileUrl: NSURL, styleParser: StyleParsable? = nil) {
        let fileLoader = FileLoader.init(fileUrl: fileUrl)
        if let data = fileLoader.load() {
            self.stylist = Stylist.init(data: data, styleParser: styleParser)
        } else {
            return nil
        }
    }
    
    public func apply() {
        self.stylist.apply()
    }
    
}