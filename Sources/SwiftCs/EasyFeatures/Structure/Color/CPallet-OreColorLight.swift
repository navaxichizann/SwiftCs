import SwiftUI

public extension Color {
    static let diamonds = Color(red: 185 / 255, green: 242 / 255, blue: 255 / 255)
    static let roseQuartz = Color(red: 247 / 255, green: 135 / 255, blue: 154 / 255)
    static let milkyQuartz = Color(red: 245 / 255, green: 232 / 255, blue: 194 / 255)
}

public extension ShapeStyle where Self == Color {
    static var diamonds: Color { .diamonds }
    static var roseQuartz: Color { .roseQuartz }
    static var milkyQuartz: Color { .milkyQuartz }
}
