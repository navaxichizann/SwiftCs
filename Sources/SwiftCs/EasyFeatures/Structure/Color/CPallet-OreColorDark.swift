import SwiftUI

public extension Color {
    static let ruby = Color(red: 155 / 255, green: 15 / 255, blue: 30 / 255)
    static let copper = Color(red: 184 / 255, green: 115 / 255, blue: 51 / 255)
    static let gold = Color(red: 205 / 255, green: 147 / 255, blue: 0)
    static let emerald = Color(red: 16 / 255, green: 94 / 255, blue: 38 / 255)
    static let lapis = Color(red: 38 / 255, green: 97 / 255, blue: 156 / 255)
    static let amethyst = Color(red: 109 / 255, green: 75 / 255, blue: 143 / 255)
}

public extension ShapeStyle where Self == Color {
    static var ruby: Color { .ruby }
    static var gold: Color { .gold }
    static var copper: Color { .copper }
    static var emerald: Color { .emerald }
    static var lapis: Color { .lapis }
    static var amethyst: Color { .amethyst }
}
