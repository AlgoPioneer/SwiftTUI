import Foundation

/// Primitive views are the building blocks for any type of view.
///
/// Note that a view is a description of how to create a **list** of controls.
/// For example, a single `ForEach` view can generate many controls.
///
/// The wrapped view can be either a composed view, or a primitive view.
/// There are roughly 4 types of primitive views:
///
/// (1) Unary views
/// Will generate a single control.
///
/// (2) Structural views
/// Use unary views to generate multiple controls, or none, or a dynamic number
/// of controls.
///
/// (3) Modifier views
/// Change the controls that an underlying view generates individually.
///
/// (4) Merging views
/// Define a container for the controls generated by the underlying view. They
/// can lazily load the controls.
protocol PrimitiveView {
    func buildNode(_ node: Node)
    func updateNode(_ node: Node)
    static var size: Int? { get }
}

extension PrimitiveView {
    public var body: Never { fatalError("Cannot evaluate body of primitive view") }
}
