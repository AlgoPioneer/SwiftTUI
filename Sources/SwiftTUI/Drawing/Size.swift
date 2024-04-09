import Foundation

public struct Size: Equatable, CustomStringConvertible {
    public var width: Int
    public var height: Int

    public static var zero: Size { Size(width: 0, height: 0) }

    public var description: String { "\(width)x\(height)" }
}
