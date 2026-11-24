# How to use: GlossyToggle
/GlossyToggle Ver 1.2.0:1.0.03/

GlossyToggle is a highly customizable, modern toggle component for SwiftUI supporting glassmorphism effects, flexible styling styles, icons, text labels, and power states.

**Features (Summarized)**

• Multiple Styles: Choose between .slider and .box toggle layouts.

• Glassmorphism Support: Easily toggle between glass aesthetics and custom tinted non-glass backgrounds.

• Flexible Indicators: Configure internal icons, text labels, power symbols (I/O), or keep it clean with .off.

• State Aware: Fully respects SwiftUI's @Environment(\.isEnabled) and color schemes (light/dark).

• Pressed Animation: Full small interactive element animation when pressed.

**Example** 

*Must add the package first using this link (https://github.com/navaxichizann/SwiftCs.git)*

```
import SwiftUI
import SwiftCs

struct ContentView: View {
    @State private var isOn = false

    var body: some View {
        VStack(spacing: 20) {
            // Basic slider toggle with default settings
            GlossyToggle($isOn)

            // Customized toggle with an action callback
            GlossyToggle(
                $isOn,
                action: {
                    print("Toggle changed to: \(isOn)")
                },
                radius: 16,
                type: .slider(.power(.one)),
                glass: .nonGlass(.more(light: .white, dark: .black))
            )
            .tint(.green)
        }
        .padding()
    }
}
```

## Features

*You don’t have to add everything in the full customization code for it work. You only need to put it in order.*

You can use this feature by adding ```GlossyToggle($Bool)``` in to your code or full customization code > 
```
GlossyToggle(
    $Bool,
    action: {Action}, 
    radius: Int,
    type: type(shows(icon, on: String, off: String)), 
    glass: .glass(glassType)/.nonGlass(color(light: Color, dark: Color))
    )
    .tint(Color)
    .disabled(Bool)
```

**Inside GlossyToggle**

*Please put these in order*

1. $Bool is a input for Binding Boolean

2. action: is for inputting the action it’ll do.

3. radius: is for putting the radius of the Corners

4. type: include 2 type as .slider for basic normal toggle, and .box is for checkboxes. Inside .slider and .box is (shows: which         have 4 type as .off for no icons, .power for basic normal switch icon, .icon for specific icon and .text for texts. inside it is     icon which have .one and .both for slider only, on and off for icons and texts. 

5. glass: include 2 type is .glass and .nonGlass for .glass contains 2 types is .normal and .frosted, .normal will use normal glassEffect while .frosted will use background(.ultraThinMaterial), for .nonGlass also contains 2 types is .one and .more for .one you must put the Color, while .more contain light and dark color of the version.

**Outside GlossyToggle**

1. .tint is for changing the color of the Toggle, if not added it will use the accent color, if the accent color is not set it will use system blue or .blue

2. .disabled is for disabling the toggle and make the toggle color change.
