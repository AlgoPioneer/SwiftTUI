import Foundation

public struct Spacer: View, PrimitiveView {
    @Environment(\.stackOrientation) var stackOrientation

    public init() {}
    
    static var size: Int? { 1 }

    func buildNode(_ node: Node) {
        node.control = SpacerControl(orientation: stackOrientation)
    }

    func updateNode(_ node: Node) {
        node.viewWrapper = ViewWrapper(view: self)
        let control = node.control as! SpacerControl
        control.orientation = stackOrientation
    }
}

private class SpacerControl: Control {
    var orientation: StackOriention

    init(orientation: StackOriention) {
        self.orientation = orientation
    }

    override func size(proposedSize: Size) -> Size {
        switch orientation {
        case .horizontal:
            return Size(width: proposedSize.width, height: 0)
        case .vertical:
            return Size(width: 0, height: proposedSize.height)
        }
    }
}
