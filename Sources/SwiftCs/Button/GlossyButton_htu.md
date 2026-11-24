# How to use: GlossyButton
*/GlossyButton Ver 1.2.0:1.1.3/*

GlossyButton is highly customizable, modern button component for SwiftUI supporting glassmorphism effects, flexible styling like normal button and Gesture state.

**Features (Summarized)**

• Glass Effects: Supports normal glassmorphic layers, frosted backgrounds (.ultraThinMaterial), or solid/adaptive color styles.

• State Aware: Built-in support for disabled states (desaturation, brightness, and opacity adjustments) and interactive press animations.

• Adaptive Styling: Easily switch between single colors or light/dark mode variants for both the button body and the label.

**Example** 

*Must add the package first using this link (https://github.com/navaxichizann/SwiftCs.git)*

```
import SwiftUI
import SwiftCs

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Basic glossy button with default settings
            GlossyButton(
                label: {
                    Label("Click Me", systemImage: "sparkles")
                },
            )
            
            // Customized button with action
            GlossyButton(
                radius: 16,
                action: {
                    print("button tapped!")
                },
                label: {
                    Text("Custom Style")
                        .fontWeight(.bold)
                },
                glass: .nonGlass(.more(light: .white, dark: .gray)),
                clabel: .one(.white),
                padding: 8
            )
            .tint(.brown)
            .disabled(false)
        }
        .padding()
    }
}
```

## Features

*You don’t have to add everything in the full customization code for it work. You only need to put it in order.*

You can use this feature by adding ```GlossyButton(action: {Action}, label: {Labels}``` in to your code or full customization code > 
```
GlossyButton(
    radius: Int,
    action: {Action},
    label: {Label},
    glass: glass: .glass(glassType)/.nonGlass(color(light: Color, dark: Color)),
    clabel: color(.cstyle(Color)),
    padding: Int
    )
    .tint(Color)
    .disabled(Bool)
```

**Inside GlossyButton**

*Please put these in order*

1. radius: is for putting the radius of the Corners

2. action: is for inputting the action it’ll do. 

4. label: is for putting items to the buttons.

5. glass: include 2 type is .glass and .nonGlass for .glass contains 2 types is .normal and .frosted, .normal will use normal glassEffect while .frosted will use background(.ultraThinMaterial), for .nonGlass also contains 2 types is .one and .more for .one you must put the Color, while .more contain light and dark color of the version.

6. padding: is for setting the the amount of width and height of the inside rounded rectangle

**Outside GlossyButton**

1. .tint is for changing the color of the Toggle, if not added it will use the accent color, if the accent color is not set it will use system blue or .blue

2. .disabled is for disabling the toggle and make the toggle color change.
