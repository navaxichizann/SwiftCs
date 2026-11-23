import SwiftUI
import SwiftCs

public struct FeatureList: View {
    @State public var bool: [Bool] = [false, false, false]
    @State public var color: Bool = false
    
    public var unevroundedrect: UnevenRoundedRectangle {
        UnevenRoundedRectangle(topLeadingRadius: 15, bottomLeadingRadius: 0, bottomTrailingRadius: 15, topTrailingRadius: 0, style: .continuous)
    }
    
    public struct ColorItem: Identifiable {
        public let id = UUID()
        public let name: String
        public let color: Color
        public let textColor: Color
    }
    
    public let importedColors: [ColorItem] = [
        .init(name: "Coral", color: .coral, textColor: .primary),
        .init(name: "Ruby", color: .ruby, textColor: .white),
        .init(name: "Copper", color: .copper, textColor: .white),
        .init(name: "Lemon", color: .lemon, textColor: .black),
        .init(name: "Gold", color: .gold, textColor: .white),
        .init(name: "Lime", color: .lime, textColor: .black),
        .init(name: "Matcha", color: .matcha, textColor: .primary),
        .init(name: "Emerald", color: .emerald, textColor: .white),
        .init(name: "Diamonds", color: .diamonds, textColor: .black),
        .init(name: "Lapis", color: .lapis, textColor: .white),
        .init(name: "Amethyst", color: .amethyst, textColor: .white),
        .init(name: "Tan", color: .tan, textColor: .primary),
        .init(name: "Cream", color: .cream, textColor: .black),
        .init(name: "MilkyQuartz", color: .milkyQuartz, textColor: .black),
        .init(name: "Pig", color: .pig, textColor: .black),
        .init(name: "RoseQuartz", color: .roseQuartz, textColor: .white),
        .init(name: "Magenta", color: .magenta, textColor: .primary),
        .init(name: "Concrete", color: .concrete, textColor: .black),
        .init(name: "LightGray", color: .lightGray, textColor: .black),
        .init(name: "DarkGray", color: .darkGray, textColor: .white),
        .init(name: "Charcoal", color: .charcoal, textColor: .white)
    ]
    
    public let allColors: [ColorItem] = [
        .init(name: "Coral", color: .coral, textColor: .primary),
        .init(name: "Red", color: .red, textColor: .primary),
        .init(name: "Ruby", color: .ruby, textColor: .white),
        .init(name: "Orange", color: .orange, textColor: .primary),
        .init(name: "Copper", color: .copper, textColor: .white),
        .init(name: "Lemon", color: .lemon, textColor: .black),
        .init(name: "Yellow", color: .yellow, textColor: .black),
        .init(name: "Gold", color: .gold, textColor: .white),
        .init(name: "Lime", color: .lime, textColor: .black),
        .init(name: "Green", color: .green, textColor: .primary),
        .init(name: "Matcha", color: .matcha, textColor: .primary),
        .init(name: "Emerald", color: .emerald, textColor: .white),
        .init(name: "Mint", color: .mint, textColor: .primary),
        .init(name: "Teal", color: .teal, textColor: .primary),
        .init(name: "Diamonds", color: .diamonds, textColor: .black),
        .init(name: "Cyan", color: .cyan, textColor: .primary),
        .init(name: "Blue", color: .blue, textColor: .primary),
        .init(name: "Lapis", color: .lapis, textColor: .white),
        .init(name: "Indigo", color: .indigo, textColor: .primary),
        .init(name: "Amethyst", color: .amethyst, textColor: .white),
        .init(name: "Purple", color: .purple, textColor: .primary),
        .init(name: "Magenta", color: .magenta, textColor: .primary),
        .init(name: "Pink", color: .pink, textColor: .primary),
        .init(name: "RoseQuartz", color: .roseQuartz, textColor: .white),
        .init(name: "Pig", color: .pig, textColor: .black),
        .init(name: "MilkyQuartz", color: .milkyQuartz, textColor: .black),
        .init(name: "Cream", color: .cream, textColor: .black),
        .init(name: "Brown", color: .brown, textColor: .primary),
        .init(name: "Tan", color: .tan, textColor: .primary),
        .init(name: "White", color: .white, textColor: .black),
        .init(name: "Concrete", color: .concrete, textColor: .black),
        .init(name: "LightGray", color: .lightGray, textColor: .black),
        .init(name: "Gray", color: .gray, textColor: .black),
        .init(name: "DarkGray", color: .darkGray, textColor: .white),
        .init(name: "Charcoal", color: .charcoal, textColor: .white),
        .init(name: "Black", color: .black, textColor: .white)
    ]
    
    public init() {}
    
    public var body: some View {
        VStack {
            Text("Feature List")
                .font(.system(size: 25, weight: .bold))
            ZStack(alignment: .topLeading) {
                ScrollView {
                    LazyVStack {
                        ZStack {
                            VStack(spacing: 3) {
                                Text("Color")
                                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                                Text(color ? "Show All Colors *36" : "Show imported Colors *21")
                                    .font(.system(size: 13.5, weight: .light, design: .rounded))
                                    .id(color)
                                    .transition(.opacity.combined(with: .move(edge: .bottom)))
                            }
                            GlossyToggle(
                                Binding(
                                    get: { color },
                                    set: { newValue in
                                        withAnimation(.snappy(duration: 0.3)) {
                                            color = newValue
                                        }
                                    }
                                ),
                                type: .box(.icon(on: "checkmark", off: "xmark"))
                            )
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        
                        ColorGrid(items: color ? allColors : importedColors)
                            .animation(.snappy(duration: 0.4), value: color)
                        
                        Text("GlossyElements")
                            .font(.system(size: 20, weight: .semibold, design: .rounded))
                            .padding(.top, 10)
                        GlossyButtonShow()
                        GlossyToggleShow()
                        
                        VStack(spacing: 2){
                            Text("Made by Nvxxichizann on Github")
                                .font(.system(size: 15, weight: .light, design: .rounded))
                            Text("This project uses Unlicense License")
                                .font(.system(size: 10, weight: .light, design: .rounded))
                        }
                        .padding(.top, 5)
                    }
                    .padding(10)
                }
                .frame(maxWidth: 300, maxHeight: 457.5)
                .background(.ultraThinMaterial, in: .rect(cornerRadius: 15))
                .clipShape(.rect(cornerRadius: 15))
                .padding(5)
                .shadow(radius: 5)
                
                ZStack {
                    Rectangle()
                        .foregroundStyle(.white)
                        .frame(width: 82.5, height: 32.5)
                        .clipShape(unevroundedrect)
                        .padding(5)
                        .opacity(0.5)
                    Text("Ver: 1.1.8")
                        .foregroundStyle(.black)
                        .padding(8)
                }
            }
        }
    }
    
    @ViewBuilder
    public func GlossyButtonShow() -> some View {
        LazyVStack{
            Text("GlossyButton")
            GlossyButton(
                action: {
                    withAnimation(.spring(duration: 0.2)) {
                        bool[0].toggle()
                    }
                },
                label: {
                    Text(bool[0] ? "GlossyButton!" : "Button")
                        .bold()
                }
            )
        }
    }
    
    public func GlossyToggleShow() -> some View {
        LazyVStack{
            Text(bool[1] ? "GlossyToggle: isOn" : "GlossyToggle: Slider")
            GlossyToggle($bool[1])
            Text(bool[2] ? "GlossyToggle: isOn" : "GlossyToggle: Box")
            GlossyToggle($bool[2], type: .box(.power))
        }
    }
    
    @ViewBuilder
    public func ColorGrid(items: [ColorItem]) -> some View {
        let columns = [
            GridItem(.flexible(), spacing: 4),
            GridItem(.flexible(), spacing: 4),
            GridItem(.flexible(), spacing: 4)
        ]
        
        LazyVGrid(columns: columns, spacing: 4) {
            ForEach(items) { item in
                RoundedRectangle(cornerRadius: 3)
                    .foregroundStyle(item.color)
                    .frame(height: 90)
                    .overlay(
                        Text(item.name)
                            .opacity(0.65)
                            .foregroundStyle(item.textColor)
                    )
                    .transition(.scale.combined(with: .opacity))
            }
        }
    }
}
